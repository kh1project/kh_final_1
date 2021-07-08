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
  <form method="get" action="${location }/seats">
	  <div class="container">
		<div class="row" id="title">
		  <div class="col-12">
		  	<c:set var="now" value="<%=new java.util.Date()%>" />
			<label><fmt:formatDate value="${now}" pattern="yyyy-MM-dd (E)" /></label>
		  </div>
		</div>
		<div class="row">
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
				<a class="btn" role="button" href="#none">
			      <dl>
			        <dd>
			          <strong>${TimeDTO.mtid }관</strong>
			        </dd>
			        <dd>
			          <strong>${TimeDTO.starttime }</strong>
			           / ${TimeDTO.endtime }
			        </dd>
			        <dd>${TimeDTO.id }</dd>
			      </dl>
			    </a>
			  </div>
			  </c:forEach>
			  <div class="col-4">
			    <a class="btn" role="button" href="#none">
			      <dl>
			        <dd>
			          <strong>13:04</strong>
			          <div class="tooltip">종료 15:08</div>
			        </dd>
			        <dd>
			          <strong>24</strong>
			           / 32
			        </dd>
			        <dd>1관</dd>
			      </dl>
			    </a>
			  </div>
			  <div class="col-4">
			    <a class="btn" role="button" href="#none">
			      <dl>
			        <dd>
			          <strong>13:34</strong>
			          <div class="tooltip">종료 15:18</div>
			        </dd>
			        <dd>
			          <strong>24</strong>
			           / 32
			        </dd>
			        <dd>1관</dd>
			      </dl>
			    </a>
			  </div>
			</div>
		  </div>
		</div><hr>
	      <input type="button" onclick="history.back();" value="이전">
	      <input type="submit" value="다음">
	  </div>
	</form>
  <%@ include file="../module/footer.jsp" %>
</body>
</html>