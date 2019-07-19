<?php 
header("Content-type:text/xml");


if(isset($_REQUEST['data']) == "1"):

	$_girls_item = Array('Tshirt','pant','skirts','shoes/sandels');
	print "<?xml version='1.0' ?>
			<items>
		";
	foreach($_girls_item as $val):
		print "<item>" . $val . "</item>";
	endforeach;
	print "</items>";
	
endif;

 ?>