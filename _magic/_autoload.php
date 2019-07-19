<?php 

		// magic method __autoload to load the missing class
		function __autoload($classname)
		{

			if(file_exists("classes/". $classname .".php")):
				require "classes/" . $classname. ".php";
			elseif(file_exists("controller/".$classname . ".php")):
				require "controller/" . $classname . ".php";
			elseif(file_exists("model/". $classname . ".php")):
				require "model/" . $classname . ".php";
			endif;
			
		}



 ?>