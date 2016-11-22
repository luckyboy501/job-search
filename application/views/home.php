<div class="container">
    <div class="section" style="margin-top: 10%">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="navs" style="text-align: center;">Find Jobs</h1>
                    <h3 style="text-align: center;">Your job search starts here.</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <form action="<?php echo base_url('classifieds/search_classifieds')?>" method="get" class="navbar-form navbar-left" role="search" style="width:100%">
                    <div class="form-group" style="margin:0 auto;position:relative;width:100%">
                        <div class="col-sm-12 col-md-5" style="margin-top:20px">
                            <label class="control-label">What?</label>
                            <div class="input-group" style="width:100%">
                                <span class="input-group-addon"><i class="fa fa-search" aria-hidden="true"></i></span>
                                <input type="text" name="keyword" class="form-control" placeholder="keyword">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-5" style="margin-top:20px">
                            <label class="control-label">Where?</label>
                            <div class="input-group" style="width: 100%;">
                                <span class="input-group-addon"><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i></span>
                                <select class="form-control" name="region">
                                    <option value="">Select a region</option>
                                    <?php foreach ($regions as $region) { ?>
                                        <option value="<?php echo $region['listing_region']?>"><?php echo $region['listing_region']?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-2" style="margin:20px auto; float:right">
                            <label class="control-label" style="display: block;">&nbsp;</label>
                            <button type="submit" class="btn btn-primary">Find jobs</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-2"></div>
        </div>
    </div>
</div>
