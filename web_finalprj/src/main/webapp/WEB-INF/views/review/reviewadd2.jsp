<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div class="page-title">영화 리뷰 작성</div>
		<div>리뷰를 작성하실 영화를 선택해주세요!<span>등록가능한 영화 0 건</span></div>
		
		<div id="add-step1" class="row row-cols-lg-4">
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
			<div>
				<div class="p-3 border bg-light">Row column</div>
			</div>
		</div>
		
		<c:url var="add" value="/review/add" />
		<div id="add-step2">
			<form action="${add }" method="post">
			<div class="row row-cols-lg-2">
				<div class="col p-3 add-imagelist">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image.jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (1).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (2).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (3).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (4).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (5).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image.jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (1).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (2).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (3).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (4).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (5).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (6).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (7).jpg">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/stillcut/movie_image (8).jpg">
				</div>
				<!-- 이미지1, 텍스트1 묶음 START -->
				<div class="col p-3 add-imagetext">
					<img id="" src="<%=request.getContextPath() %>/resources/images/movie/1/poster/movie_image (1).jpg">
					<textarea placeholder="내용을 작성해 주세요."></textarea>
				</div>
				<!-- 이미지1, 텍스트1 묶음 END -->
			</div>
			<button type="submit">등록</button>
			<button type="button">취소</button>	
			</form>
		</div>
<jsp:include page="review_footer.jsp"></jsp:include>