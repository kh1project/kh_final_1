<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.requestURL}" />
<div class="left-menu">
	<ul>
		<c:choose>
			<c:when test="${fn:contains(path, 'reserve') }">
				<li class="choice-movie active" id="" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" id="" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat" id="">좌석</li>
				<li class="choice-payment" id="">결제</li>
				<li class="choice-paySuccess" id="">결제완료</li>
			</c:when>
			<c:when test="${fn:contains(path, 'schedule') }">
				<li class="choice-movie" id="" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time active" id="" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat" id="">좌석</li>
				<li class="choice-payment" id="">결제</li>
				<li class="choice-paySuccess" id="">결제완료</li>
			</c:when>
			<c:when test="${fn:contains(path, 'seats') }">
				<li class="choice-movie" id="" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" id="" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat active" id="">좌석</li>
				<li class="choice-payment" id="" >결제</li>
				<li class="choice-paySuccess" id="">결제완료</li>
			</c:when>
			<c:when test="${fn:contains(path, 'reservecheck') }">
				<li class="choice-movie" id="" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" id="" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat" id="">좌석</li>
				<li class="choice-payment active" id="">결제</li>
				<li class="choice-paySuccess" id="">결제완료</li>
			</c:when>
			<c:otherwise>
				<li class="choice-movie" id="" onclick="location.href='<%=request.getContextPath() %>/reserve'">영화</li>
				<li class="choice-time" id="" onclick="location.href='schedule'">상영시간</li>
				<li class="choice-seat" id="">좌석</li>
				<li class="choice-payment" id="">결제</li>
				<li class="choice-paySuccess active" id="">결제완료</li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>