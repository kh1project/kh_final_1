<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div class="page-title">영화 리뷰 수정</div>
		<c:url var="update" value="/review/update" />
		<div id="update">
		<form action="${update }" name="step2form" method="post">
			<div class="row">
				<div class="col-6">
					<div id="add-imagelist" class="row">
					</div>
				</div>
				<div class="col-6 postwrap">
					별점 : <input type="number" id="star" name="star" min="1" max="5" value="1"><!-- 나중에 별 체크하는걸로 바꿔야함. 임시. -->
					<!-- 이미지1, 텍스트1 묶음 START -->
					<div id="post1" class="col post" onclick="selectPost(1)">
						<img class="selectImg" src="<%=request.getContextPath() %>/resources/images/sub/bg-img-select.png" alt="이미지 없음">
						<textarea placeholder="내용을 작성해 주세요." id="ptext1" onkeyup="ptextLengthCk(1);"></textarea>
						<div class="pTextCnt">(0 / 100)</div>
						<img id="delBtn1" class="delBtn" src="<%=request.getContextPath() %>/resources/images/common/btn-x-close.png" onclick="delPost(1);">
					</div>
					<!-- 이미지1, 텍스트1 묶음 END -->
					<button id="btn_addpost" type="button" onclick="addPost()">포스트추가</button>
					<input id="hiddenmid" type="hidden" name="mid" value="">
					<input id="hiddentitle" type="hidden" name="title" value="">
					<input id="hiddencontents" type="hidden" name="contents" value="">
				</div>
			</div>
			<button id="btn_step2submit" type="button" onclick="addReview()">등록</button>
			<button type="button">취소</button>	
		</form>
	</div>
<jsp:include page="review_footer.jsp"></jsp:include>