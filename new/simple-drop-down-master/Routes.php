<?php 

Route::set_route("index.php",function(){
	
	// load auth_controller to load welcome page
	Auth_controller::welcome();
	Search_controller::dbsearch();
	
	
	
});
Route::set_route("index",function(){
	print "index.php";
});



Route::set_route("about.php",function(){
	print "about.php";
});
Route::set_route("about",function(){
	print "about";
})





 ?>