<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석선택</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
main{
	height: 100%;
	margin: auto auto;
}
table.seats{
	border: 1px solid black;
	width: 800px; height : 600px;
	padding: 1rem;
}
th, td {
	height: 50px;
	padding: 1rem;
	text-align: center;
}
div{
	width: 1000px; height : 100%;
	margin: auto auto;
}
</style>
<body class="pt-5"> 
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	<main>
		<div>
			<p> 리스트-> Map -> list 가져오기 </p>
			<p> 문자열 잘라서 값 정렬 </p>
			<table class="seats" border="1">
				<tr>
					<th>확인용</th>
					<th>Key 값</th>
					<th>Value 값</th>
				</tr>
			<c:forEach var="seat_list" items="${seatlist }" >
				<c:forEach var="seat" items="${seat_list }" varStatus="status">
					<tr>
						<td>${seat.key eq 'seat1' }</td>
						<td>${seat.key }</td>
						<td>${seat.value }</td>
					</tr>
				</c:forEach>
			</c:forEach>
			</table>
		</div>
		<div>
			
		</div>
	</main>
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
</html>