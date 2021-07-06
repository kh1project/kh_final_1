<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div class="page-title">영화 리뷰 작성</div>
		<div id="add-step1">
			<div>리뷰를 작성하실 영화를 선택해주세요!<span>등록가능한 영화 ${mywlist.size() } 건</span></div>
	
			<div class="row row-cols-lg-4">
				<!-- 이미지 불러오는 주소 임시임, DB값을 수정해야 할 듯(contextpath 이후의 path가 저장되도록) -->
				<c:forEach var="i" items="${mywlist }" varStatus="loop">
					<c:forEach var="j" items="${i }" begin="0" end="0">
						<label for="wm${j.getId() }" onclick="selectmovie(${j.getId() });"><div id="wm${j.getId() }wrap" class="p-3 border bg-light wmwrap">
							<div id="checkbg${j.getId() }" class="checkbg"><i class="fa fa-check"></i></div>
							<img src="<%=request.getContextPath() %>/resources/images/movie/${loop.count }/poster/${j.getName() }">
							${j.getTitle() }
							<input type="radio" name="wm" id="wm${j.getId() }" class="r_movieselect" value="wm${j.getId() }">
						</div></label>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
		
		
		<c:url var="add2" value="/review/add2" />
		<div id="add-step2">
		<form action="${add2 }" method="post">
			<div class="row">
				<div class="col-6">
					<div id="add-imagelist" class="row">
					</div>
				</div>
				<div class="col-6 postwrap">
					<!-- 이미지1, 텍스트1 묶음 START -->
					<div id="post1" class="col p-3 post" onclick="selectPost(1)">
						<img class="selectImg" src="" alt="이미지 없음">
						<textarea placeholder="내용을 작성해 주세요."></textarea>
					</div>
					<!-- 이미지1, 텍스트1 묶음 END -->
					<button id="btn_addpost" type="button" onclick="addPost()">포스트추가</button>
				</div>
			</div>
			<button type="submit">등록</button>
			<button type="button">취소</button>	
		</form>
	</div>
<jsp:include page="review_footer.jsp"></jsp:include>