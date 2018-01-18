<div class="container">


	<div class="row">
	
		<div class="col-xs-12">
	
		<ol class = "breadcrumb">
		
			<li class = "breadcrumb-item active"><a href = "${contextRoot }/home">home</a></li>
			<li class = "breadcrumb-item active"><a href = "${contextRoot }/show/all/products">Products</a></li>
			<li class = "breadcrumb-item active">${product.name }</li>
		</ol>
	
	
	</div>


</div>


	<div class = "row">
	
		<div class = "col-xs-12 col-sm-4">
		
			<div>
			
				<img src="${images}/${product.code}.jpg" class = "img img-responsive " width="300"/>
			
			</div>
		
		</div>
		
		<div class="col-xs-12 col-sm-8">
		
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.description}</p>
			<hr/>
			
			<h4>Price: <strong> &#8377; ${product.unitPrice }</strong></h4>
			<hr/>
			
			<h6>Qty. Available: ${product.quantity }</h6>
			
			<a href="${contextRoot}/cart/add/${product.id}/product" class = "btn btn-success">Add to Cart</a>
			
			<a href="${contextRoot}/show/all/products" class = "btn btn-success">Back</a>
			
		
			
		</div>
	</div>



</div>