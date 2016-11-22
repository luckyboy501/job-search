<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $title?></title>
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.css')?>">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/custom.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css')?>">
</head>
<body style="padding-top: 50px">
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="<?php echo base_url('/');?>" class="navbar-brand">Job Search</a>
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar-main" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li>
                    <a href="<?php echo base_url('classifieds');?>">Classifieds</a>
                </li>
                <li>
                    <a href="<?php echo base_url('alerts');?>">Manage Email Alerts</a>
                </li>
            </ul>

        </div>
    </div>
</div>