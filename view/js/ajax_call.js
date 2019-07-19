	// cache some variables 
	var xmlhttpRequestObj,
	header,
	input_index,
	input_value,
	result = document.getElementById('result');

	

	

	setFEventjs('event.js');
	// download js files
	function setFEventjs(datasource)
	{

		// create XMLHttpRequest obj for apple safari, android, firefox, IE.
		try{
			xmlhttpRequestObj = new ActiveXObject("MSXML2.XMLHttpRequest");
		}catch(execption1){
			try{
				xmlhttpRequestObj = new ActiveXObject("Microsoft.XMLHttpRequest")
			}catch(execption2){
				xmlhttpRequestObj = false;
			}
		}

		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest;
		}

				if(xmlhttpRequestObj)
				{
					xmlhttpRequestObj.open("GET","view/js/"+datasource);
					
					xmlhttpRequestObj.onreadystatechange = function()
					{
						if(xmlhttpRequestObj.readyState == 4  && xmlhttpRequestObj.status == 200)
						{
							eval(xmlhttpRequestObj.responseText);
						}
					}
					xmlhttpRequestObj.send(null);
				}
	}






	// list kids items
	function getxmldata_kids(datasource,divId)
	{


		// create XMLHttpRequest obj for apple safari, android, firefox, IE.
		try{
			xmlhttpRequestObj = new ActiveXObject("MSXML2.XMLHttpRequest");
		}catch(execption1){
			try{
				xmlhttpRequestObj = new ActiveXObject("Microsoft.XMLHttpRequest")
			}catch(execption2){
				xmlhttpRequestObj = false;
			}
		}

		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest();
		}


				if(xmlhttpRequestObj)
				{
					
					var divId = document.getElementById(divId);
					xmlhttpRequestObj.open("GET",datasource,true,'admin','909090');
					xmlhttpRequestObj.setRequestHeader('Content-type','application/xml')
					xmlhttpRequestObj.setRequestHeader("Authorization", 'Basic ' + btoa(Math.random()));
					
					xmlhttpRequestObj.onreadystatechange=function()
					{
						if(xmlhttpRequestObj.readyState == 4 && xmlhttpRequestObj.status == 200)
						{
								
							var xml_items = xmlhttpRequestObj.responseXML;
							product   = xml_items.getElementsByTagName("item");

								listProducts();
						}
					}
					xmlhttpRequestObj.send(null);
				}
	}



	// list electronics items
	function getxmldata_ele(datasource,divId)
	{

		try{
			xmlhttpRequestObj = new ActiveXObject('MSXML2.XMLHttpRequest');
		}catch(execption1){
			try{
				xmlhttpRequestObj = new ActiveXObject('Microsoft.XMLHttpRequest');
			}catch(execption2){
				xmlhttpRequestObj = false;
			}
		}


		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest();	
		}

			if(xmlhttpRequestObj)
			{
				var divId = document.getElementById(divId);
				xmlhttpRequestObj.open('GET',datasource,true);

				xmlhttpRequestObj.onreadystatechange=function()
				{
					if(xmlhttpRequestObj.readyState == 4 && xmlhttpRequestObj.status == 200)
					{
						
						var xml_items = xmlhttpRequestObj.responseXML;
						product = xml_items.getElementsByTagName('item');

						listProducts();
					}
				}

				xmlhttpRequestObj.send(null);

			}

	}


	// list free ebook pdf
	function getxmldata_ebook(datasource,divId)
	{
		try{
			xmlhttpRequestObj = new ActiveXObject('MSXML2.XMLHttpRequest');
		}catch(execption1){
			try{
				xmlhttpRequestObj = new ActiveXObject('Microsoft.XMLHttpRequest');
			}catch(execption2){
				xmlhttpRequestObj = false;
			}
		}

		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest();
		}


			if(xmlhttpRequestObj)
			{
				var divId = document.getElementById(divId);
				xmlhttpRequestObj.open('GET',datasource,true);
					
				xmlhttpRequestObj.onreadystatechange=function()
				{
					if(xmlhttpRequestObj.readyState == 4 && xmlhttpRequestObj.status == 200)
					{
							var xml_items = xmlhttpRequestObj.responseXML;
							product = xml_items.getElementsByTagName('item');

							listProducts();
					}
				}
				xmlhttpRequestObj.send(null);
			}


	}



	// list girls
	function getxmldata_girls(datasource,divId)
	{
		try{
			xmlhttpRequestObj = new ActiveXObject('MSXML2.XMLHttpRequest');
		}catch(execption1){
			try{
				xmlhttpRequestObj = new ActiveXObject('Microsoft.XMLHttpRequest');
			}catch(execption2){
				xmlhttpRequestObj = false;
			}
		}

		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest;
		}


			if(xmlhttpRequestObj)
			{
				var divId = document.getElementById(divId);
				xmlhttpRequestObj.open('GET',datasource,true);
					
				xmlhttpRequestObj.onreadystatechange=function()
				{
					if(xmlhttpRequestObj.readyState == 4 && xmlhttpRequestObj.status == 200)
					{
							var xml_items = xmlhttpRequestObj.responseXML;
							product = xml_items.getElementsByTagName('item');

							listProducts();
					}
				}
				xmlhttpRequestObj.send(null);
			}	
	}



	// list study materials
	function getxmldata_study(datasource,divId)
	{
		try{
			xmlhttpRequestObj = new ActiveXObject("MSXML2.XMLHttpRequest");
		}catch(exception1){
			try{
				xmlhttpRequestObj = new ActiveXObject("Microsoft.XMLHttpRequest");
			}catch(exception2){
				xmlhttpRequestObj = false;
			}
		}

		if(!xmlhttpRequestObj && window.XMLHttpRequest)
		{
			xmlhttpRequestObj = new XMLHttpRequest();
		}

			if(xmlhttpRequestObj){
				var divId = document.getElementById(divId);
				xmlhttpRequestObj.open('GET',datasource);

				xmlhttpRequestObj.onreadystatechange=function()
				{
					if(xmlhttpRequestObj.readyState == 4 && xmlhttpRequestObj.status == 200)
					{
						var xml_response = xmlhttpRequestObj.responseXML;
						product = xml_response.getElementsByTagName("item");

						listProducts();
					}
				}
				xmlhttpRequestObj.send(null);
			}

	}

	//  loop through the products list items
	function listProducts()
	{
		// cache variable
		let selectoptionsList = document.getElementById('selectoptionsList');
		let value, loopIndex;

			for(loopIndex=0; loopIndex < product.length; loopIndex++)
			{
				selectoptionsList.options[loopIndex] = new Option(product[loopIndex].firstChild.data);
				value = selectoptionsList.options[loopIndex].setAttribute('value',product[loopIndex].firstChild.data);
			}

	}






