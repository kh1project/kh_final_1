<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영시간표</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
hr { margin: 3px; }
.row { text-align: center; }
.col {
	text-align: center; background-color: white;
}
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
  <c:url var="movielist" value="/reserve/schedule" />
	<div class="container">
	  <div class="row" id="title">
	  	<div class="col-12">
	  	  <c:set var="now" value="<%=new java.util.Date()%>" />
		  <label><fmt:formatDate value="${now}" pattern="yyyy-MM-dd (E)" /></label>
	  	</div>
	  </div>
      <div class="col">
        <div class="row">
          <div class="col">
		    <div class="list-group list-group-flush" id="list-tab" role="tablist">
		  	<!-- 평점 순으로 영화 목록 나열 -->
		    <c:forEach var="MovieDTO" items="${movieAll_list}" varStatus="status">
		      <a class="list-group-item list-group-item-action" id="list-seoul-list" href="?title=${MovieDTO.title }" role="tab" aria-controls="home">
			      <!-- 등급제한에 따라 뱃지 표시 -->
			      <c:choose>
			        <c:when test="${MovieDTO.rating eq '0'}">
			          <span class="badge badge-pill badge-success">ALL</span>
			        </c:when>
			        <c:when test="${MovieDTO.rating eq '12'}">
			          <span class="badge badge-pill badge-primary">12</span>
			        </c:when>
			        <c:when test="${MovieDTO.rating eq '15'}">
			          <span class="badge badge-pill badge-warning">15</span>
			        </c:when>
			        <c:otherwise>
			          <span class="badge badge-pill badge-danger">19</span>
			        </c:otherwise>
			      </c:choose>
		        ${MovieDTO.title}</a>
		    </c:forEach>
		  </div>
		</div>
	  </div>
	  </div>
	  <form method="get" action="${location }/time" target="_self">
	    <input type="button" onclick="history.back();" value="이전" />
      	<input type="submit" value="다음" />
      </form>
	</div>
  <%@ include file="../module/footer.jsp" %>
<script type="text/javascript">

</script>
</body>
</html>