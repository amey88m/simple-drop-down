<?php 
/**
 * 
 */
class Search_model extends Model
{
	
	private $connection;

	private $query;

	private $rowscount;




			public function search()
			{
				
				// $this->connection = DB::connection();
				
				// load '_cheker/_search.php' 
				$checker = new Search_controller;
				$checker->loadchecker("search");
			}


	
}

 ?>