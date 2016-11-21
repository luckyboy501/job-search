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
            <div class="col-md-3"></div>
            <div class="col-sm-12 col-md-6">
                <div class="form-group" style="margin: 0 auto">
                    <label class="control-label">Where?</label>
                    <div class="input-group">
                        <span class="input-group-addon">Country</span>
                        <select class="form-control" id="select">
                            <option>Select a city</option>
                            <?php foreach ($cities as $city) { ?>
                                <option><?php echo $city['listing_region']?></option>
                            <?php } ?>
                        </select>
                        <span class="input-group-btn">
                        <button class="btn btn-primary" type="button">Find jobs</button>
                    </span>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</div>
