// use of concurrent ajax request to call multiple xmlhttpRequst obj 
var xmlHttpRequestobjs = new Array();
var index;


	
	function set_data(url)
	{

		if(window.XMLHttpRequest)
		{
			xmlHttpRequestobjs.push(new XMLHttpRequest())
		}else if(window.ActiveXObject){
			xmlHttpRequestobjs.push(new ActiveXObject("Microsoft.XMLHttpRequest"))
		}

		index = xmlHttpRequestobjs.length - 1 ;


			if(xmlHttpRequestobjs[index]){
				xmlHttpRequestobjs[index].open("GET",url,true);
				xmlHttpRequestobjs[index].onreadystatechange=function()
				{
					if(xmlHttpRequestobjs[index].readyState == 4 && xmlHttpRequestobjs[index].status == 200)
					{
						var response_data = xmlHttpRequestobjs[index].responseText;
					}
				}
				xmlHttpRequestobjs[index].send(null);
			}

	}





