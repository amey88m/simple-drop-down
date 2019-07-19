<?php 

/**
 * 
 */
class Route
{
	
	private static $valideRoute = Array();

	


		public static function set_route($url, $function)
		{
			$valideRoute[] = $url;

				/*	
				| Examples:	my-controller/index	-> my_controller/index
				|			my-controller/my-method	-> my_controller/my_method
				*/
				$route['default_controller'] 	= 'welcome';
				$route['404_override'] 			= '';
				$route['translate_uri_dashes'] 	= FALSE;

			if( $_GET['uri'] == $url):
				$function->__invoke();
			endif;

			
		}

}


 ?>