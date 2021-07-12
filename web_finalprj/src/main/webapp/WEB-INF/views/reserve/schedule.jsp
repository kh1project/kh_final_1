<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영시간표</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/reserve.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/schedule.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<body class="pt-5">
  <header>
  	<%@ include file="../module/header.jsp" %>
  </header>
  <section class="reserve-frame pt-5">
  <c:url var="location" value="/reserve" />
  <form method="get" action="${location }/time">
	<div class="reserve-window">
	<%@ include file="../module/ReserveFrame.jsp" %>
	  <div class="row" id="title">
	  	<div class="col-12">
		  <label>${param.location } - ${param.name }</label>
	  	</div>
	  </div>
        <div class="row" id="schedule_form">
        <div class="col-12">
		  <div class="list-group list-group-flush" id="list-tab" role="tablist">
		    <c:forEach var="MovieDTO" items="${movieAll_list}" varStatus="status">
		      <c:choose>
		        <c:when test="${param.title eq MovieDTO.title }">
			      <a class="list-group-item py-4 list-group-item-action active" id="list-seoul-list"
			        href="?location=${param.location }&name=${param.name }&rating=${MovieDTO.rating }&title=${fn:replace(MovieDTO.title, '#', '%23') }" role="tab" aria-controls="home">
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
		        </c:when>
		        <c:otherwise>
		        <a class="list-group-item py-4 list-group-item-action" id="list-seoul-list"
		          href="?location=${param.location }&name=${param.name }&rating=${MovieDTO.rating }&title=${fn:replace(MovieDTO.title, '#', '%23') }" role="tab" aria-controls="home">
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
		        </c:otherwise>
		      </c:choose>
		    </c:forEach>
		  </div>
		</div>
		<div class="col" id="next">
			<input type="hidden" name="location" value="${param.location }">
			<input type="hidden" name="name" value="${param.name }">
			<input type="hidden" name="rating" value="${param.rating }">
			<input type="hidden" name="title" value="${param.title }">
			<input id="idnow" type="hidden" name="moviedate">
			<input class="backbtn" type="button" onclick="history.back();" value="< 이전">
			<input class="nextbtn" type="submit" value="다음 >">
		</div>
	  </div>
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
</script>
</body>
</html>