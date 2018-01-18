$(function(){
	
	switch(menu){
	
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	default:
		if(menu == 'Home') break;
		$('#home').addClass('active');
		$('#a_'+menu).addClass('active');
		break;
		
		
	}
	
	//Data table
	
	//Data Set
	
	
	
	var $table = $('#productListTable');
	
	if($table.length){
		//console.log('Inside the table!')
		
		var jsonUrl = '';
		if(window.categoryId == ''){
			
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}else{
			
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';

		}
		
		
		
		$table.DataTable({
			
			lengthMenu:[[3,5,10,-1],['3 Records','5 Records','10 Records','ALL']],
			pageLength: 5,
			
			ajax:{
				url: jsonUrl,
				dataSrc:''
			},
			columns:[
				
			
				{
					data : 'name'
				},
				{
					data : 'brand'
				},
				{
					data : 'unitPrice',
					mRender: function(data, type, row){
						
						return '&#8377;' + data
					}
				},
				{
					data : 'quantity'
				},
				{
					data : 'id',
					mRender: function(data, type, row){
						var str = '';
						str += '<a href="'+window.contextRoot+'/show'+data+'/product">View</a>'
						
						return str;
						0
00	 				}
				}
				
			]
			
			
		});
		
	}
});