
<div class = "container">

	<div class="row">
	
		<div class="col-md-3">
		
		<%@include file="./shared/sidebar.jsp" %>
		
		</div>
		
		<div class = "col-md-9">
		
			<div class = "row">
			
				<div class = "col-lg-12">
				
				<c:if test="${userClickAllProducts == true }">
					
					<script>
					window.categoryId = '${category.id}';
					</script>
					
					<ol class = "breadcrumb">
					
					
					<li class = "breadcrumb-item active"><a href="${contextRoot}/home">Home</a></li>
					<li class = "breadcrumb-item active">All Products</li>
					</ol>
				</c:if>
				
				
				<c:if test="${userClickCategoryProducts == true }">
				
				<script>
				window.categoryId = '${category.id}';
				</script>
				
				<ol class = "breadcrumb">
			
					<li class = "breadcrumb-item active"><a href="${contextRoot}/home">Home</a></li>
					<li class = "breadcrumb-item active">Category</li>
					<li class = "breadcrumb-item active">${category.name}</li>
					</ol>
				</c:if>
				
				</div>
			
			</div>
		
			<div class="row">
					
					<div class="col-xs-12">
					
						<table id="productListTable" class = "table table-striped table-borderd">
						
						<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty. Available</th>
							<th></th>
						
						</tr>
						</thead>
						
							<tfoot>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Qty. Available</th>
							
						
						</tr>
						</tfoot>
				
						
						</table>
					</div>
			
			</div>
		
		</div>
	
	
	
	</div>



</div>