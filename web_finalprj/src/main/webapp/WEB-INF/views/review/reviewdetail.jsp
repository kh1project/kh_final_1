<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
	<div class="page-title">영화 리뷰 상세</div>
	<h3>${data.getTitle() }</h3>
	<p>작성자 : ${data.getAid() }<a href="<%=request.getContextPath() %>/review/update?rid=${data.getId() }">수정</a><a href="<%=request.getContextPath() %>/review/delete?rid=${data.getId() }">삭제</a></p>
	
	<c:forEach var="i" items="${contlist }" varStatus="loop">
		<div>
			<img src="${i.getPostimg() }">
			<p>${i.getPosttext() }</p>
		</div>
	</c:forEach>
<jsp:include page="review_footer.jsp"></jsp:include>