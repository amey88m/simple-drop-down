(function(){
	

		function getTargetEvent(e)
		{
				e = e || window.event;
				return e.target || e.SrcElement;
		}

		function attachEvent(ev)
		{
			var target = getTargetEvent(ev);

			if(target.matches('.btn-1'))
			{	
				getxmldata_kids("view/xml/kids_list.xml?cid=1",result);
			}else if(target.matches('.btn-2'))
			{
				getxmldata_ele("view/xml/electronics_list.xml?cid=2",result);
			}else if(target.matches('.btn-3'))
			{
				getxmldata_ebook("view/xml/e_books_list.xml?cid=3", result);
			}else if(target.matches('.btn-4'))
			{
				getxmldata_girls("view/xml/girls_list.xml?cid=4", result);
			}else if(target.matches('.btn-5'))
			{
				getxmldata_study("view/xml/study_material_list.xml?cid=5", result);
			}else if(target.matches('.btn-6'))
			{
				getxmldata_study("view/xml/home_applances_list.xml?cid=6", result);
			}

		}

	var btn = document.getElementById('card');
	btn.onclick=attachEvent;

	var selectdiv =  document.getElementById('selectoptionsList');
	selectdiv.onchange=setproductdata;



})();