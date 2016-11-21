<form action="<?php echo base_url('classifieds/update_class');?>" method="post">
	<input type="hidden" name="classified_id" value="<?php echo $classified['id'];?>">
	<input type="text" name="post_id" value="<?php echo $classified['post_id'];?>">
	<input type="text" name="price" value="<?php echo $classified['price'];?>">
	<input type="text" name="title" value="<?php echo $classified['title'];?>">

	<button type="submit">Save</button>
</form>