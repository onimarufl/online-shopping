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
	
	var products = [
				
			['1','ABC'],
			['2','CYX'],
			['3','PQR'],
			['4','MNO'],
			['5','WVB'],
			['6','CFG'],
			['7','HIK'],
			['8','LMP']
			
	];	
	
	var $table = $('#productListTable');
	
	if($table.length){
		
		//console.log('Inside the table!')
		
		$table.DataTable({
			
			data : products
			
		});
		
	}
});