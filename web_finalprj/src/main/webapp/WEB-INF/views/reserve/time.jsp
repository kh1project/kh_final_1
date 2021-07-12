<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 - SEENEMA</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/reserve.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<!-- button { opacity: 0.25 } 버튼 투명하게 설정할 수 있음 -->
<style type="text/css">
hr { margin: 3px; }
dl { margin: 0px; }
.btn {
	display: inline-block;
	width: 65%;
	text-align: center;
	border-style: hidden;
	border-collapse: separate;
	border-radius: 1ex;
	background-color: lightgray;
}
.row { text-align: center; height: auto;}
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
#time_form {
	height: 660px;
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
  <header>
  	<%@ include file="../module/header.jsp" %>
  </header>
  <section class="reserve-frame pt-5">
  <c:url var="location" value="/reserve" />
  <form method="get" action="${location }/seats">
	  <div class="container">
	  <%@ include file="../module/ReserveFrame.jsp" %>
		<div class="row" id="title">
		  <div class="col-12">
		  	<c:set var="now" value="<%=new java.util.Date()%>" />
			<label><fmt:formatDate value="${now}" pattern="yyyy-MM-dd (E)" /></label>
		  </div>
		</div>
		<div class="row" id="time_form">
		  <div class="col">
		    <label id="sub">
		    <c:choose>
		        <c:when test="${param.rating eq '0'}">
		          <span class="badge badge-pill badge-success">ALL</span>
		        </c:when>
		        <c:when test="${param.rating eq '12'}">
		          <span class="badge badge-pill badge-primary">12</span>
		        </c:when>
		        <c:when test="${param.rating eq '15'}">
		          <span class="badge badge-pill badge-warning">15</span>
		        </c:when>
		        <c:otherwise>
		          <span class="badge badge-pill badge-danger">19</span>
		        </c:otherwise>
            </c:choose>
		    ${param.title } - 시간표</label><hr>
			<div class="row">
			  <c:forEach var="TimeDTO" items="${timelist}" varStatus="status">
		    	<div class="col-4">
			    	<a class="btn" role="tab" data-toggle="tooltip" data-placement="top" title="${TimeDTO.endtime }"
			    	  href="${location }/seats?location=${param.location }&name=${param.name }&rating=${param.rating }&title=${fn:replace(param.title, '#', '%23') }&moviedate=${param.moviedate }&starttime=${TimeDTO.starttime }&endtime=${TimeDTO.endtime }">
				      <dl>
				        <dt>
				          <strong>${TimeDTO.starttime }</strong>
				        </dt>
				        <dd>
				          <strong>${TimeDTO.seat_reserved }</strong>
				           / ${TimeDTO.seat_count }
				        </dd>
				        <dd>${TimeDTO.name }</dd>
				      </dl>
					</a>
				</div>
			  </c:forEach>
			</div>
		  </div>
		</div><hr>
		<input type="hidden" name="location" value="${param.location }">
		<input type="hidden" name="name" value="${param.name }">
		<input type="hidden" name="rating" value="${param.rating }">
        <input type="hidden" name="title" value="${param.title }">
        <input type="hidden" name="starttime" value="${param.startime }">
        <input type="hidden" name="endtime" value="${param.endtime }">
        <input id="idnow" type="hidden" name="moviedate">
	  </div>
	</form>
	</section>
  <footer>
  	<%@ include file="../module/footer.jsp" %>
  </footer>
<script type="text/javascript">
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth() + 1;
	var day = today.getDate();
	if(month <= 9) {
		month = "0" + month;
	}
	if(day <= 9) {
		day = "0" + day;
	}
	today = year + "-" + month + "-" + day;
	document.getElementById("idnow").value = today;
	
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
</script>
</body>
</html>