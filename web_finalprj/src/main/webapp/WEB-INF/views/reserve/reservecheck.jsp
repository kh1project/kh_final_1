<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	
	<c:url var="url_payment" value="/kakaopay" />
	<form action="${url_payment }" id="payment-form" method="post" onsubmit="return send()">
	<section class="reserve-frame pt-5">
		<div class="reserve-window">
			<%@ include file="../module/ReserveFrame.jsp" %>
			
			<c:forEach var="movieinfo" items="${moviedata }">
				<c:set var="mid" value="${movieinfo.id }" />
				<c:set var="title" value="${movieinfo.title }" />
				<c:set var="rating" value="${movieinfo.rating }" />
				<c:set var="type" value="${movieinfo.type }" />
			</c:forEach>
			
			<c:forEach var="btlist" items="${btlist }">
				<c:set var="tid" value="${btlist.tid }" />
				<c:set var="location" value="${btlist.location }" />
				<c:set var="spot" value="${btlist.name }" />
				<c:set var="theater" value="${btlist.tname }" />
			</c:forEach>
			
			<c:forEach var="poster" items="${poster }">
				<c:set var="posterId" value="${poster.id }" />
				<c:set var="postername" value="${poster.name }" />
			</c:forEach>
			
			<c:forEach var="timelist" items="${timelist }">
				<c:set var="moviedate" value="${timelist.moviedate }" />
				<c:set var="starttime" value="${timelist.starttime }" />
				<c:set var="endtime" value="${timelist.endtime }" />
			</c:forEach>
			
			<div class="center-frame">
				<div class="title">
					<label class="reserve-info">예매정보</label>
					<c:url var="payment" value="/reserve/payment" />
						<div class="movie-info">
							<div class="poster">
								<img src="<c:url value="/resources/img/${posterId }/poster/${postername }" />">
							</div>
								<c:choose>
									<c:when test="${rating eq 0 }">
										<c:set var="age" value="all" />
									</c:when>
									<c:otherwise>
										<c:set var="age" value="${rating }" />
									</c:otherwise>
								</c:choose>
							
								<label class="rating-${age }">${age }</label>
								<input type="text" class="info title" name="title" value="${title }" readonly>
								<label class="type">${type }</label>
								<hr>
							<div class="info">
								<label class="list">영화관</label>
								<input type="text" name="location" class="info cinema" value="${location }" readonly>
								<input type="text" name="name" class="info cinema" value="${spot }" readonly>
								<input type="text" name="tname" class="info cinema" value="${theater }" readonly>
								<label class="list">인원</label><input type="text" name="peple" class="info peple" value="${peple }" readonly><p class="p-peple">명</p>
								<hr>
								<label class="list">상영일</label><input type="text" name="moviedate" class="info moviedate" value="${moviedate }" readonly>
								<hr>
								<label class="list">상영시간</label>
								<input type="text" name="starttime" class="info starttime" value="${starttime }" readonly><p class="p-time">~</p>
								<input type="text" name="endtime" class="info endtime" value="${endtime }" readonly>
								<hr>
								<label class="list">좌석</label><input type="text" name="seat" class="info seat" value="${Seat }" readonly>
								
							</div>
						</div>
				</div>
				<div class="payment">
					<label class="method-of-payment">결제수단(kakao pay 이외 구현X)</label>
					<input type="button" class="payment-type" id="creditcard" onclick="selectPayment(this.id)" value="신용카드">
					<input type="button" class="payment-type" id="kakaoPay" onclick="selectPayment(this.id)" value="kakaoPay">
					<input type="button" class="payment-type" id="bank" onclick="selectPayment(this.id)" value="계좌이체">
					<input type="button" class="payment-type" id="phone" onclick="selectPayment(this.id)" value="휴대폰">
					<input type="button" class="payment-type" id="easypayment" onclick="selectPayment(this.id)" value="간편결제">
					<input type="button" class="payment-type" id="toss" onclick="selectPayment(this.id)" value="토스">
				</div>
			</div>
			
			<div class="right-frame">
				<label class="pay">결제하기</label>
				<div class="benefits">
					<input type="button" class="use-of-benefits" id="coupon" onclick="none(this.id)" value="쿠폰">
					<input type="button" class="use-of-benefits" id="point" onclick="none(this.id)" value="포인트">
				</div>
				
				<c:set var="division" value="0" />
				<div class="pay-info">
					<div class="price-left">
						<input type="text" value="예매 금액 :" readonly>
						<input type="text" value="할인 금액 :" readonly>
						<input type="text" value="결제 금액 :" readonly>
						<input type="text" value="결제 수단 :" readonly>
					</div>
					<div class="price-right">
						<input type="text" name="price" value="${price }" readonly>
						<input type="text" name="division" value="${division }" readonly>
						<input type="text" name="total" value="${price + division }" readonly>
						<input type="text" id="how-pay" name="methodPay" value="" readonly>
					</div>
					<div class="pay-btn">
						<button class="pay" onclick="send()">결제하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	</form>
	
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
<script type="text/javascript">
	function send(form_id) {
		var f = document.getElementById(form_id);
		if(document.getElementById('how-pay').value == "kakaoPay"){
			return true;
		} else {
			alert(document.getElementById('how-pay').value + "구현되지 않은 기능입니다.");
			return false;
		}
	}
	
	function selectPayment(element)  {
		var pay = document.getElementById(element).value;
		document.getElementById('how-pay').value = pay;
	}
	
	function none(element) {
		var no_item = document.getElementById(element).value;
		alert(no_item + "(은)는 구현되지 않은 기능입니다.");
	}
</script>
</html>