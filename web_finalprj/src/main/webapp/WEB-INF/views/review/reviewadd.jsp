<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div class="page-title">영화 리뷰 작성</div>
		<div>리뷰를 작성하실 영화를 선택해주세요!<span>등록가능한 영화 0 건</span></div>
		
		<c:url var="add2" value="/review/add2" />
		<form action="${add2 }" method="post">
			<div id="add-step1" class="row row-cols-lg-4">
				<div>
					<div id="1" class="p-3 border bg-light">Row column</div>
				</div>
				<div>
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div>
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div>
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div>
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div>
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<input type="hidden" value="">
			</div>
			<button type="submit">선택</button>
			<button type="button">취소</button>	
		</form>
<jsp:include page="review_footer.jsp"></jsp:include>