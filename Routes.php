<?php 

Route::set_route("index.php",function(){
	Auth_controller::welcome();
	Search_controller::dbsearch();
});


Route::set_route("index",function(){
	Auth_controller::welcome();
	Search_controller::dbsearch();
});








 ?>