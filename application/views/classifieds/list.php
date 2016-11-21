<table>
	<tr>
		<th>Post Index</th>
		<th>Price</th>
		<th>Title</th>
		<th>action</th>
	</tr>

	<?php
		foreach ($classifieds_list as $classified) {
	?>
	<tr>
		<td><?php echo $classified['post_id'];?></td>
		<td><?php echo $classified['price'];?></td>
		<td><?php echo $classified['title'];?></td>
		<td><a href="<?php echo base_url('classifieds/edit_class/'.$classified['id']);?>">Edit</a>&nbsp;<a href="<?php echo base_url('classifieds/delete_class/'.$classified['id']);?>">Delete</a></td>
	</tr>
	<?php
		}
	?>
</table>