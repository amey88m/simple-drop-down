<?php 

/**
 * 
 */
class Controller
{
	
		

		// load view
		protected static function loadView($view)
		{	
			require_once "view/" . $view . ".php";
		}

		// load model
		protected static function loadModel($model)
		{
			require_once "model/" . $model . ".php";
		}

		// load Errors
		protected static function loadError($error)
		{
			require_once "view/error/" . $error . ".php";
		}

		// load checker
		public static function loadchecker($checker)
		{
			require_once "view/_checker/_" . $checker . ".php";
		}


		


}

 ?>