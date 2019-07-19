<?php 
/**
 * 
 */
class Search_controller extends Controller
{
	
	

	
		public function dbsearch()
		{
			// load 'search model'
			parent::loadModel('Search_model');
			$user = new Search_model;
			$user->search();

		}		


}


 ?>