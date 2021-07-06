<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 - SEENEMA</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<!-- button { opacity: 0.25 } 버튼 투명하게 설정할 수 있음 -->
<style type="text/css">
hr { margin: 3px; }
button { 
	border-style: hidden;
	border-collapse: separate;
	border-radius: 1ex;
	background-color: lightgray;
}
.row { text-align: center; }
.col { text-align: center; background-color: white; }
.list-group {
    max-height: 800px;
    margin-bottom: 10px;
    overflow: auto;
    overflow-x: hidden;
    -webkit-overflow-scrolling: touch;
}
.list-group-item {
	width: 100%;
}
#title {
	font-weight: bold;
	margin-top: 5px;
	padding: 10px;
	background-color: black;
	color: white;
}
#sub { 
	font-weight: bold;
	margin-top: 10px;
}
::-webkit-scrollbar {
  width: 10px;
  
}
::-webkit-scrollbar-thumb {
    background-color: #2f3542;
</style>
<body class="pt-5">
  <%@ include file="../module/header.jsp" %>
  <c:url var="location" value="/reserve" />
	  <div class="container">
		<div class="row" id="title">
		  <div class="col-12">
		  	<c:set var="now" value="<%=new java.util.Date()%>" />
			<label><fmt:formatDate value="${now}" pattern="yyyy-MM-dd (E)" /></label>
		  </div>
		</div>
		<div class="row">
		  <div class="col">
		    <label id="sub">시간표</label><hr>
			<div class="row">
			  <div class="col">
			    <button type="button">영화</button>
			    <button type="button">시간</button>
			    <button type="button">좌석</button>
			    <button type="button">관</button>
			  </div>
			</div>
		  </div>
		</div>
		<form method="get" action="${location }/seats" target="_self">
	      <input type="button" onclick="history.back();" value="이전" />
	      <input type="submit" value="다음" />
	    </form>
	  </div>
  <%@ include file="../module/footer.jsp" %>
</body>
</html>