<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot"
	value="${pageContext.servletContext.contextPath}" />

<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>

<!DOCTYPE html>
<html lang="en">
		
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage -${title}</title>

<script type="text/javascript">
	window.menu = "${title}";
</script>

<!-- theme -->
 <%-- <link href="${css}/bootstrap.min.css" rel="stylesheet"> 
<link href="${css}/bootstrap.css" rel="stylesheet"> 
  --%> 
<!-- Bootstrap core CSS -->
<%-- <link href="${css}/bootstrap.min.css" rel="stylesheet"> --%>

<!-- Custom styles for this template -->
<%-- <link href="${css}/shop-homepage.css" rel="stylesheet">   
<link href="${css}/new.css" rel="stylesheet"> 
 --%>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<link href="${css}/myapp.css" rel="stylesheet"> 
</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>


		<!-- Page Content -->

		<div class="content">

			<!-- Loading the home content -->
			<c:if test="${userClickHome}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user click contact -->
			<c:if test="${userClickContact}">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Load only when user click about -->
			<c:if test="${userClickAbout}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user click contact -->
			<c:if test="${userClickListProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
		</div>






		<!-- /.container -->



		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<%-- <script src="${js}/jquery.min.js"></script> 
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
 		<script src="${js}/myapp.js"></script> --%>
 		<script src="${js}/jquery.js"></script> 

		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/bootbox.min.js"></script>
		
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
 
 
 </div>
</body>

</html>
