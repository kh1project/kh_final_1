<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
	<div class="page-title"><div class="container"><h1>영화 리뷰 보기</h1></div></div>
	<div class="container">
		<div class="review-detail-wrap">
			<div class="review-detail-header">
				<h3>${data.getTitle() }<span>${data.getCdate() }</span></h3>
			<p>작성자 : ${data.getAid() }<a href="<%=request.getContextPath() %>/review/update?rid=${data.getId() }">수정</a> <a href="<%=request.getContextPath() %>/review/delete?rid=${data.getId() }">삭제</a> <a href="javascript:;" onclick="history.back();">목록</a></p>
			</div>
			
			<c:forEach var="i" items="${contlist }" varStatus="loop">
				<div class="review-post-wrap">
					<img src="${i.getPostimg() }">
					<p>${i.getPosttext() }</p>
				</div>
			</c:forEach>
			<button type="button">${data.getGcnt() }</button>
			<button type="button">${data.getBcnt() }</button>
		</div>
<jsp:include page="review_footer.jsp"></jsp:include>