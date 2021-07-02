<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div class="page-title">영화 리뷰 작성</div>
		<div>리뷰를 작성하실 영화를 선택해주세요!<span>등록가능한 영화 ${mywlist.size() } 건</span></div>
		
		<c:url var="add" value="/review/add" />
		<form action="${add }" method="post">
			<div id="add-step1" class="row row-cols-lg-4">
				<!-- 이미지 불러오는 주소 임시임, DB값을 수정해야 할 듯(contextpath 이후의 path가 저장되도록) -->
				<c:forEach var="i" items="${mywlist }" varStatus="loop">
					<c:forEach var="j" items="${i }" begin="0" end="0">
						<label for="wm${loop.count }"><div id="wm${loop.count }wrap" class="p-3 border bg-light">
							<img src="<%=request.getContextPath() %>/resources/images/movie/${loop.count }/poster/${j.getName() }">
							${j.getTitle() }
							<input type="radio" name="wm" id="wm${loop.count }" value="wm${loop.count }">
						</div></label>
					</c:forEach>
				</c:forEach>
				
				<!-- 샘플코드
				<div>
					<div id="1" class="p-3 border bg-light">Row column</div>
				</div> -->
			</div>
			<button type="submit">선택</button>
			<button type="button">취소</button>
			
			
			<c:url var="add2" value="/review/add2" />
			<div id="add-step2">
			<form action="${add2 }" method="post">
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
		</form>
<jsp:include page="review_footer.jsp"></jsp:include>