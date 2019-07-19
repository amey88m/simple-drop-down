<?php include_once "include/header.inc.php" ?>
<link rel="stylesheet" type="text/css" href="sass/temp.css">

</head>

<body>

<?php

$token  = random_bytes(20)."ELZO93813Y-QLWEZ7".uniqid('', true);
$_token = (bin2hex($token));
	
	// set default token to browser
	setcookie('_token', $_token, time()+60, __DIR__, '127.0.0.1',0);
?>

<div class="mt-4">
	<div class="container">
		<div class="row">
			
			<div class="col-md-3">
				<div class="card" id="card">
					<div class="card-title card-outline-secondary py-2 text-center text-uppercase">choose your search.</div>
					<hr>
					<div class="card-body">
						<div class="card-block">
							<div class="row">
								<div class="col-md-12 p-0">
									<ul class="p-0">
									<li class="badge badge-default p-2 br-0 btn-1 m-1">Kids.</li>
									<li class="badge badge-info p-2 br-0 m-1 btn-2">Electronics items.</li>
									<li class="badge badge-danger p-2 br-0 m-1 btn-3">Free Ebook pdf.</li>
									<li class="badge badge-warning p-2 br-0 m-1 btn-4">Girls wear.</li>
									<li class="badge badge-default p-2 br-0 m-1 btn-5">study material.</li>
									<li class="badge badge-info p-2 br-0 m-1 btn-6">home applances.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>	
			</div>

			<div class="col-md-9">
				
				<form class="row">
					<div class="col-md-9">
						<select id="selectoptionsList" name="list[]" class="d-block form-control br-0">
							<option value="">Choose the options from search list and go</option>
						</select>
					</div>
					<div class="col-md-3"></div>
				</form>

				<div id="output_result"></div>
				
			</div>

		</div>
	</div>
</div>


<div id="result"></div>





<script src="view/js/ajax_call.js"></script>
<script src="view/js/setData.js"></script>
</body>
</html>