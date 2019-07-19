<?php 
session_start();
session_id();
session_regenerate_id(true);


// browser token check on server
$_token = $_SERVER["HTTP_COOKIE"];


// client request with browser token

if(empty($_GET['token']) | !isset($_GET['token']) | empty($_GET['cid']) | empty($_GET['iv'])):
	http_response_code(404);
	exit();
endif;
	
	
	// check for token 
	if( $_GET['token'] == $_token):

	
		

		if(isset($_GET['cid']) && isset($_GET['iv']) ):

			// connection
			require_once  $_SERVER['DOCUMENT_ROOT'] ."/proj0/classes/DB.php";
			$db = new DB;
			$con = $db->connection();

			$cid 		= $_GET['cid'];
			$input_val 	= $_GET['iv'];
			?>


			<div class="row my-4">
				<div class="col-md-12">
					<span id="result" class="text-danger">Result: <?php  print $input_val ?></span>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="row">
			<?php
				
				// $q = "SELECT * FROM `products` WHERE MATCH(`keywords`) AGAINST( '".$input_val."' IN BOOLEAN MODE)";
				// $result = $db->query = $db->sql($q);
				$result = $db->query = $db->sql("SELECT * FROM products WHERE keywords LIKE '%$input_val%' limit 0,4");
				
				if(is_array($result)):
					foreach($result as $key=>$val):
					?>
						
									
									<div class="col-md-4">
										<div class="card card-outline-danger br-0 mb-4">
											<div class="card-title text-center card-danger">
												<h5 class="text-white py-1"><?php print $val['product_name'] ?></h5>
											</div>
											<div class="card-body px-2 py-3">
												<div class="text-center">
													<img src="images/stuff/<?php print $_GET['iv'].'/'.$val['product_image'] .'.jpg'?>" width="140px" height="140px" class="img-fluid" />
												</div>
												<p class="desc text-left text-danger text-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
											</div>
											<div class="card-footer card-danger">
												<!-- stars -->
												<div class="stars">
												<?php 
													for($i=1; $i<=5; $i++):
														switch($cid):
															case 1:
															print "<span class='star star-1 stared'></span>";
															for($i=1; $i<=4; $i++):
															print "<span class='star star-$i'></span>";	
															endfor;
															break;
															
															case 2:
															print "<span class='star star-1 stared'></span>";
															print "<span class='star star-2 stared'></span>";
															for($i=1; $i<=3; $i++):
															print "<span class='star star-$i'></span>";	
															endfor;
															break;

															case 3:
															for($i=1; $i<=3; $i++):
															print "<span class='star star-$i stared'></span>";	
															endfor;
															for($i=1; $i<=2; $i++):
															print "<span class='star star-$i'></span>";	
															endfor;
															break;

															case 4:
															for($i=1; $i<=4; $i++):
															print "<span class='star star-$i stared'></span>";	
															endfor;
															print "<span class='star star-$i'></span>";	
															break;

															case 5:
															for($i=1; $i<=5; $i++):
															print "<span class='star star-$i stared'></span>";	
															endfor;
															break;
															
															default;

														endswitch;
													endfor;
												 ?>	
												</div>
												<div class="btn-grouped f-right">
													<input type="button" name="" class="btn btn-sm btn-info btn-default text-black" value="view">
												</div>
											</div>
										</div>
									</div>
									
					<?php	
						
					endforeach;
				endif;
			?>
									
								</div>
							</div>
						</div>

<?php	endif;
	
	endif; 

?>