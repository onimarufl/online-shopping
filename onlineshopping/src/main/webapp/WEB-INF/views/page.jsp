<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix = "spring" uri="http://www.springframework.org/tags"%>
    
    <spring:url var="css" value="/resources/css"/>
    <spring:url var="js" value="/resources/js"/>
    <spring:url var="images" value="/resources/images"/>
    <c:set var = "contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

  <head>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ทดสอบ - ${title}</title>

<script>
window.menu = '${title}';
window.contextRoot = '${contextRoot}';
</script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Theme -->
    <link href="${css}/Boot-t.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">
    
    
    


  
  
  </head>



  <body>
	
	<div class = "wrapper">
	
    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp" %>

    <!-- Page Content -->
    <div class = "content">
    
    <!-- Loading home content -->
    <c:if test="${userClickHome == true }">
    <%@include file = "home.jsp" %>
    </c:if>
    
    <!-- About -->
     <c:if test="${userClickAbout == true }">
    <%@include file = "about.jsp" %>
    </c:if>
    
     <!-- Contact -->
     <c:if test="${userClickContact == true }">
    <%@include file = "contact.jsp" %>
    </c:if>
    
     <!-- Contact -->
     <c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
    <%@include file = "listProducts.jsp" %>
    </c:if>
    
      <!-- Show Product -->
    	<c:if test="${userClickShowProduct == true }">
    	<%@include file = "singleProduct.jsp" %>
    	</c:if>
    
    </div>
    
    <!-- /.container -->

  	<!-- Footer Comes Here -->
  	
  	<%@include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
	
	<!-- Codes Javascript -->
	<script src="${js}/myapp.js"></script>
	
	<!-- Table -->
	 <script src="${js}/jquery.dataTables.js"></script>
	 

	
	</div>
  </body>

</html>