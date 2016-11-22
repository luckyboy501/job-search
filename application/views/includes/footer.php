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
</script>
</body>
</html>
