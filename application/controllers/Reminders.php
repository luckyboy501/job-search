<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reminders extends CI_Controller {

    private $from_email = 'notify@expatnotify.com';
    private $timezone = 'Asia/Riyadh';

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
//                echo $minutes. ", ". $alert['interval']. "<br>";
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
                        $msg .= '<br><br><br><table style="width:50%;border-spacing:0px;"><thead><tr><th colspan="4" style="font-size:30px;border:none">Job List</th></tr></thead>';
                        $msg .= '<tr><th>Post ID</th><th>Title</th><th>Price</th><th>Region</th></tr>';
                        foreach ($classifieds as $one) {
                            $msg .= '<tr><td><a href="'. $one['link']. '">'. $one['post_id']. '</a></td><td>'. $one['title']. '</td><td>'. $one['price']. '</td><td>'. $one['listing_region']. '</td></tr>';
                        }
                        $msg .= '</table><br><br>';
                        $msg .= '.<a href="' . base_url('alerts?email=' . $alert['email']) . '">';
                        $msg .= 'click here to manage all your alerts</a>';
                        $msg .= '<style>th,td{border:1px solid}</style>';

                        $this->email->message($msg);

//                        echo $msg;

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
