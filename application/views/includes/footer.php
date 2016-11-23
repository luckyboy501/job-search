
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js');?>"></script>

<script>
    $('#btn-create-alert').on('click', function(e) {
        e.preventDefault();
        var keyword = $('#keyword').val();
        var region = $('#region').val();
        var interval = $('#interval').val();
        var email = $('#email').val();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url("alerts/insert_alert")?>',
            data: {
                'keyword'  : keyword,
                'region'   : region,
                'interval' : interval,
                'email'    : email
            },
            success: function(results) {
                alert("Created a job alert for " + keyword + ", " + region + " (cancel anytime). \r\nEmail alerts are sent to: " + email);
            },
            error: function(error) {
                alert("Failed in creating alert", error);
            }
        });
    });

    $('.link-alert-edit').on('click', function(e) {
        var id = $(this).attr('rel');
        e.preventDefault();
        $.ajax({
            type: 'POST',
            dataType:"json",
            url: '<?php echo base_url("alerts/get_alert")?>',
            data: {
                'id' : id
            },
            success: function(results) {
                console.log(results);
                $('#keyword').val(results['keyword']);
                $('#region').val(results['region']);
                $('#alert-id').val(id);
            }
        });
    });

    $('.link-alert-delete').on('click', function(e) {
        var _this = $(this);
        e.preventDefault();
        if (confirm("Are you sure you want to delete alert?")) {
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url("alerts/delete_alert")?>',
                data: {
                    'id' : $(this).attr('rel')
                },
                success: function(results) {
                    _this.parent().parent().remove();
                    alert("Deleted alert");
                },
                error: function(error) {
                    alert("Failed in deleting alert", error);
                }
            });
        }
    });

    $('#btn-update-email').on('click', function (e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url("alerts/update_email")?>',
            data: {
                'email' : $('#curr-email').val(),
                'new_email' : $('#new-email').val()
            },
            success: function(results) {
                alert("Updated your email address");
            },
            error: function(error) {
                alert("Failed in updating email address", error);
            }
        });
    });

    $('#btn-update-alert').on('click', function (e) {
        var id = $('#alert-id').val();
        var keyword = $('#keyword').val();
        var region = $('#region').val();
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url("alerts/update_alert")?>',
            data: {
                'id' : id,
                'keyword' : keyword,
                'region' : region
            },
            success: function(results) {
                $('#alert-'+id).find("td:first-child").html(keyword);
                $('#alert-'+id).find("td:nth-child(2)").html(region);
            },
            error: function(error) {
                alert("Failed in updating alert", error);
            }
        });
    });

</script>

</body>
</html>
