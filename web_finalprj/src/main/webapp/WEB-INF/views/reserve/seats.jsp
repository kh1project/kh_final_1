<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석선택</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
</head>
<style type="text/css">
main{
	height: 100%;
	margin: auto auto;
}
table.seats{
	border: 1px solid black;
	width: 300px; height : 600px;
	padding: 1rem;
}
</style>
<body class="pt-5"> 
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	<main>
		<table class="seats">
		<tr>
			
		</tr>
	</table>
	</main>
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
</html>