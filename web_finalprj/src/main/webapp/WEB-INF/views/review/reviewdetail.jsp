<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
	<div class="page-title"><div class="container"><h1>영화 리뷰 보기</h1></div></div>
	<div class="container">
		<div class="review-detail-wrap">
			<div class="review-detail-header">
				<h3>${data.getTitle() }<fmt:formatDate var="cdate" value="${data.getCdate() }" pattern="yyyy/MM/dd HH:mm:ss.SSS" />
												<small class="text-muted cdate" data-id="${data.getId() }" data-cdate="${cdate }"></small></h3>
			<p>작성자 : ${data.getAid() } 조회수 : ${data.getVcnt() } <a href="<%=request.getContextPath() %>/review/update?rid=${data.getId() }">수정</a> <a href="<%=request.getContextPath() %>/review/delete?rid=${data.getId() }">삭제</a> <a href="javascript:;" onclick="history.back();">목록</a></p>
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