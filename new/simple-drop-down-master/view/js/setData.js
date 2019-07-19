
	function setproductdata()
	{
		
		var selectoptionsList = document.getElementById('selectoptionsList');

		loadData("view/_checker/_search.php?cid=1"+Math.random()+new Date()+selectoptionsList.selectedIndex+"&iv="+selectoptionsList.value+"&token="+document.cookie);
				
	}	




		function loadData(datasource)
		{
			let output_result = document.getElementById('output_result');
			let cache = {};
				if(cache[datasource])
					return cache[datasource];

			
			// call ajax
			let xhr = new XMLHttpRequest();
			
			if(xhr)
			{
				
				xhr.open('GET',datasource,true);
				xhr.setRequestHeader('Pragma','no-cache');
				xhr.setRequestHeader('Access-Control-Allow-Origin','127.0.0.1');
				xhr.setRequestHeader('Access-Control-Allow-Credentials',true);
				xhr.setRequestHeader('Access-Control-Allow-Methods','POST');
				xhr.setRequestHeader('Cache-Control','must-revalidate');

				xhr.onreadystatechange=function()
				{

					if(xhr.status == 304)
					{
						return cache[datasource];
					}else if(xhr.readyState == 4 && xhr.status==200 )
					{
						let data1 = xhr.responseText;
						let data  = cache[datasource] = data1;
						output_result.innerHTML=data;

					}
				};
				xhr.send(null);
			}

		}

				


			



