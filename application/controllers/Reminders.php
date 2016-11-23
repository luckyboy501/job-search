<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reminders extends CI_Controller {

    private $from_email = 'luckyboy11@mail.com';
    private $timezone = 'Europe/Moscow';

    public function __construct() {
        parent::__construct();
        $this->load->library('input');
        $this->load->library('email');
        $this->load->model('alerts_model');
        $this->load->model('classifieds_model');
    }

    public function index()
    {
        if(!$this->input->is_cli_request())
        {
            echo "This script can only be accessed via the command line" . PHP_EOL;
            return;
        }
        $alerts = $this->alerts_model->get_alerts_list();
        if(!empty($alerts))
        {
            foreach($alerts as $alert)
            {
                $classifieds = $this->classifieds_model->get_classifieds_list($alert['keyword'], $alert['region']);
                if (count($classifieds) > 0)
                {
                    $diff = date_diff(new DateTime($alert['email_created_date'], new DateTimeZone($this->timezone)), new DateTime('now', new DateTimeZone($this->timezone)));
                    $minutes = $diff->days * 24 * 60;
                    $minutes += $diff->h * 60;
                    $minutes += $diff->i;
                    if ($diff->invert == 1)
                    {
                        $minutes = -$minutes;
                    }
                    if ($minutes >= $alert['interval'])
                    {
                        $this->email->set_newline("\r\n");
                        $this->email->to($alert['email']);
                        $this->email->from($this->from_email);
                        $this->email->subject("Your Daily Job Alert");

                        $msg = "You've requested to receive job alerts for ";
                        $msg .= $alert['keyword'] != '' ? $alert['keyword']. ', ' : '';
                        $msg .= $alert['region'];
                        $msg .= '.<a href="'. base_url('alerts?email='.$alert['email']). '">';
                        $msg .= 'click here to manage all your alerts</a>';

                        $this->email->message($msg);
                        $this->email->send();
                        $this->alerts_model->update_email_created_date($alert['id']);
                        echo "Sent email to ". $alert['email'];
                    }
                }
            }
        }
    }
}
