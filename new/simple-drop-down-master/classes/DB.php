<?php 
/**
 * DB
 */

class DB
{
	
	
	private $host 		= "localhost";
	
	private $username 	= "root";
	
	private $password 	= "";
	
	private $db_name 	= "proj0";
	
	public $con;





		public function connection()
		{
			$this->con = mysqli_connect($this->host, $this->username, $this->password, $this->db_name);

			// if(!$this->con)
			// 	echo mysqli_error();
			// else
			// 	echo "success";
		}


		public function sql($query)
		{
			
			$result = mysqli_query($this->con, $query);

				$rows = Array();
				while($row = mysqli_fetch_assoc($result)):
					$rows[] = $row;
				endwhile;

				if(!empty($rows)):
					return $rows;
				endif;

		}



		public function rowscount($query)
		{
			$result = mysqli_query($this->con, $query);
			return $result;
		}

			




}


 ?>