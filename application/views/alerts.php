<?php
/**
 * Created by PhpStorm.
 * User: Yury Kozulin
 * Date: 11/22/2016
 * Time: 11:44 PM
 */
?>

<div class="container">
    <div class="section">
        <div class="row" style="margin:30px 10px">
            <h1 id="navs">Manage Email Alerts</h1>
        </div>
        <div class="row" style="margin:30px 10px">
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group" style="width:100%">
                    <label class="control-label">Email alerts are sent to:</label>
                    <input type="hidden" id="curr-email" value="<?php echo $email?>">
                    <input type="email" id="new-email" class="form-control" placeholder="email" value="<?php echo $email?>">
                    <div style="display:inline-block;margin-top:20px">
                        <button type="button" class="btn btn-primary" id="btn-update-email">Update</button>
                    </div>
                </div>
            </form>
        </div>
        <hr>
        <div class="row" style="margin:30px 10px">
            <h2>My email alerts</h2>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <table class="table table-striped table-hover ">
                    <thead>
                    <tr>
                        <th>Title</th>
                        <th>Location</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    if (count($alerts) > 0) {
                        foreach ($alerts as $alert) { ?>
                            <tr id="<?php echo 'alert-'. $alert['id']?>">
                                <td width="50%"><?php echo $alert['keyword']?></a></td>
                                <td width="30%"><?php echo $alert['region']?></td>
                                <td width="20%">
                                    <a href="#" class="link-alert-edit" rel="<?php echo $alert['id']?>">Edit</a>&nbsp;&nbsp;&nbsp;
                                    <a href="#" class="link-alert-delete" rel="<?php echo $alert['id']?>">Delete</a>
                                </td>
                            </tr>
                        <?php }} ?>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading"><strong>Edit alert</strong></div>
                    <div class="panel-body">
                        <form class="form-horizontal">
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">Keyword</label>
                                    <div class="col-lg-9">
                                        <input type="text" class="form-control" id="keyword">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">Location</label>
                                    <div class="col-lg-9">
                                        <input type="text" class="form-control" id="region">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-6 col-lg-offset-6">
                                        <input type="hidden" id="alert-id">
                                        <button id="btn-update-alert" type="submit" class="btn btn-primary" style="width:100%">Update Email Alert</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
