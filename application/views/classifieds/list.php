<?php
if (!isset($keyword))
    $keyword = '';
if (!isset($region))
    $region = '';
?>
<div class="container">
    <div class="section">
        <div class="row">
            <div class="col-lg-3">
                <h1 id="navs" style="margin-top:50px"><?php echo count($classifieds_list)?> Jobs</h1>
            </div>
            <div class="col-lg-9">
                <form action="<?php echo base_url('classifieds/search_classifieds')?>" method="get" class="navbar-form navbar-left" role="search">
                    <div class="form-group" style="margin:0 auto;position:relative;width:100%">
                        <div class="col-sm-12 col-md-5" style="margin-top:20px">
                            <label class="control-label">What?</label>
                            <div class="input-group" style="width:100%">
                                <span class="input-group-addon"><i class="fa fa-search" aria-hidden="true"></i></span>
                                <input type="text" name="keyword" class="form-control" placeholder="keyword" value="<?php echo $keyword?>">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-5" style="margin-top:20px">
                            <label class="control-label">Where?</label>
                            <div class="input-group" style="width: 100%;">
                                <span class="input-group-addon"><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i></span>
                                <select class="form-control" name="region" value="<?php echo $region?>">
                                    <option value="">Select a region</option>
                                    <?php foreach ($regions as $r) { ?>
                                        <option value="<?php echo $r['listing_region']?>" <?php if ($r['listing_region']==$region)echo 'selected'?>><?php echo $r['listing_region']?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-2" style="margin:20px auto;">
                            <label class="control-label" style="display: block;">&nbsp;</label>
                            <button type="submit" class="btn btn-primary">Find jobs</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-6">
                <h2>
                    <?php
                        $results = '';
                        if ($keyword == '') {
                            $results = 'Jobs in ';
                        } else {
                            $results = $keyword. ' jobs in ';
                        }
                        if ($region == '') {
                            $results = $results . 'USA';
                        } else {
                            $results = $results . $region;
                        }
                        echo $results;
                    ?>
                </h2>
            </div>
            <div class="col-lg-6">
                <form class="navbar-form navbar-left" role="CreateAlert">
                    <input type="hidden" id="keyword" name="keyword" value="<?php echo $keyword?>">
                    <input type="hidden" id="region" name="region" value="<?php echo $region?>">
                    <div class="form-group col-lg-5">
                        <label class="control-label" style="display: block">Alert Interval</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                            <select id="interval" name="interval" class="form-control" placeholder="interval">
                                <option value="5">5 minutes</option>
                                <option value="30">30 minutes</option>
                                <option value="60">Every hour</option>
                                <option value="180">Every 3 hours</option>
                                <option value="360">Every 6 hours</option>
                                <option value="720">Every 12 hours</option>
                                <option value="1440">Every 24 hours</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-lg-7">
                        <label class="control-label" style="display: block">Create Alert</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                            <input type="email" id="email" name="email" class="form-control" placeholder="email">
                            <span class="input-group-btn">
                              <button id="btn-create-alert" class="btn btn-primary" type="submit">Create</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-12">
                <table class="table table-striped table-hover ">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Job Title</th>
                        <th>Price</th>
                        <th>Listing Region</th>
                        <th>Listing New Region</th>
                        <th>Listing Category</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    if (count($classifieds_list) > 0) {
                        foreach ($classifieds_list as $k=>$classified) { ?>
                    <tr>
                        <td><?php echo $k+1?></td>
                        <td><a href="<?php echo base_url($classified['link'])?>"><?php echo $classified['title']?></a></td>
                        <td><?php echo $classified['price']?></td>
                        <td><?php echo $classified['listing_region']?></td>
                        <td><?php echo $classified['listing_newregion']?></td>
                        <td><?php echo $classified['listing_category']?></td>
                    </tr>
                    <?php }} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
