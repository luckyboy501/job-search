<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reminders extends CI_Controller {

    private $from_email = 'info@webmaster.com';
    private $timezone = 'America/New_York';

    public function __construct() {
        parent::__construct();
        // $this->load->library('input');
        $this->load->library('email');
        $this->load->model('alerts_model');
        $this->load->model('classifieds_model');
    }

    public function index()
    {
        // if(!$this->input->is_cli_request())
        // {
        //     echo "This script can only be accessed via the command line" . PHP_EOL;
        //     return;
        // }
        $alerts = $this->alerts_model->get_alerts_list();
        if(!empty($alerts))
        {
            foreach($alerts as $alert)
            {
                $diff = date_diff(new DateTime($alert['email_updated_datetime'], new DateTimeZone($this->timezone)), new DateTime('now', new DateTimeZone($this->timezone)));
                $minutes = $diff->days * 24 * 60;
                $minutes += $diff->h * 60;
                $minutes += $diff->i;
                if ($diff->invert == 1)
                {
                    $minutes = -$minutes;
                }
                echo $minutes. ", ". $alert['interval']. "<br>";
                if ($minutes >= $alert['interval'])
                {
                    $classifieds = $this->classifieds_model->get_classifieds_list($alert['keyword'], $alert['region'], $alert['email_updated_datetime']);
                    if (count($classifieds) > 0)
                    {
                        $this->email->set_newline("\r\n");
                        $this->email->to($alert['email']);
                        $this->email->from($this->from_email, "Your Daily Job Alert | Expat");
                        $this->email->subject("Your Daily Job Alert");

                        $msg = "You've requested to receive job alerts for ";
                        $msg .= $alert['keyword'] != '' ? $alert['keyword'] . ', ' : '';
                        $msg .= $alert['region'];
                        $msg .= '<br><table style="width:50%">';
                        $msg .= '<tr><th>Post ID</th><th>Title</th><th>Price</th><th>Region</th><th>Link</th></tr>';
                        foreach ($classifieds as $one) {
                            $msg .= '<tr><th>'. $one['post_id']. '</th><th>'. $one['title']. '</th><th>'. $one['price']. '</th><th>'. $one['listing_region']. '</th><th>'. $one['link']. '</th></tr>';
                        }
                        $msg .= '</table><br><br>';
                        $msg .= '.<a href="' . base_url('alerts?email=' . $alert['email']) . '">';
                        $msg .= 'click here to manage all your alerts</a>';

                        $this->email->message($msg);

                        if ($this->email->send()) {
                            echo "Email sent successfully to " . $alert['email'] . ".<br>";
                        } else {
                            echo "Error in sending Email to " . $alert['email'] . ".<br>";
                        }
                    }
                    $this->alerts_model->update_email_datetime($alert['id']);
                }
            }
        }
    }
}
