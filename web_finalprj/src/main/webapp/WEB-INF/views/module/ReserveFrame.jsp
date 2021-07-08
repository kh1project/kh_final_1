<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.requestURL}" />
<h1>${path }</h1>
<div class="left-menu">
	<ul>
		<c:choose>
			<c:when test="${fn:endsWith(path, 'reserve.jsp') }">
				<li class="choice-movie active" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat">좌석</li>
				<li class="choice-payment" >결제</li>
				<li class="choice-paySuccess" >결제완료</li>
			</c:when>
			<c:when test="${fn:endsWith(path, 'schedule.jsp') }">
				<li class="choice-movie" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time active" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat">좌석</li>
				<li class="choice-payment">결제</li>
				<li class="choice-paySuccess">결제완료</li>
			</c:when>
			<c:when test="${fn:endsWith(path, 'seats.jsp') }">
				<li class="choice-movie" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat active">좌석</li>
				<li class="choice-payment">결제</li>
				<li class="choice-paySuccess" >결제완료</li>
			</c:when>
			<c:when test="${fn:endsWith(path, 'reservecheck.jsp') }">
				<li class="choice-movie" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat">좌석</li>
				<li class="choice-payment active">결제</li>
				<li class="choice-paySuccess">결제완료</li>
			</c:when>
			<c:otherwise>
				<li class="choice-movie" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat">좌석</li>
				<li class="choice-payment">결제</li>
				<li class="choice-paySuccess active">결제완료</li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>