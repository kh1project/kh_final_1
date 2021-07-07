<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제요청 페이지</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/reserve.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/payment.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<body class="pt-5">
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	
	<section class="reserve-frame pt-5">
		<div class="reserve-window">
			<div class="left-menu">
				<button class="choice-time">상영시간</button>
				<button class="choice-movie">영화</button>
				<button class="choice-seat">좌석</button>
				<button class="choice-payment active">결제</button>
				<button class="choice-paySuccess">결제완료</button>
			</div>
			
			<c:forEach var="movieinfo" items="${moviedata }">
				<c:set var="title" value="${movieinfo.title }" />
				<c:set var="rating" value="${movieinfo.rating }" />
				<c:set var="type" value="${movieinfo.type }" />
			</c:forEach>
			
			<c:forEach var="btlist" items="${btlist }">
				<c:set var="lacation" value="${btlist.location }" />
				<c:set var="spot" value="${btlist.bname }" />
				<c:set var="theater" value="${btlist.tname }" />
			</c:forEach>
			
			<c:forEach var="poster" items="${poster }">
				<c:set var="posterId" value="${poster.id }" />
				<c:set var="postername" value="${poster.name }" />
			</c:forEach>
			<div class="center-frame">
				<div class="title">
					<label class="reserve-info">예매정보</label>
					<div class="movie-info">
						<div class="poster">
							<img src="<c:url value="/resources/img/${posterId }/poster/${postername }" />">
						</div>
							<span class="rating-${rating }">${rating }</span><label class="title">${title }</label>
							<label class="type">${type }</label>
							<hr>
						<div class="info">
							<label class="list">영화관</label><label class="info cinema">${lacation } ${spot } ${theater }</label>
							<label class="list">인원</label><label class="info peple">${peple } 명</label>
							<hr>
							<label class="list">좌석</label><label class="info seat">${Seat }</label>
						</div>
					</div>
				</div>
				<div class="payment">
					<label class="method-of-payment">결제수단</label>
					<p>카카오페이</p>
				</div>
			</div>
			
			<div class="right-frame">
				오른쪽
			</div>
		</div>
	</section>
	
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
</html>