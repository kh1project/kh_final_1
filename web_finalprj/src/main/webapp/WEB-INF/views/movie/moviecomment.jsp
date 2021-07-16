<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>"${movie.getTitle() }" - 주요정보</title>
<c:url var="root" value='/' />
<script type="text/javascript"
	src="${root }resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="${root }resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="${root }resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="${root }resources/static/css/common.css">
<link type="text/css" rel="stylesheet"
	href="${root }resources/static/css/line.css">
<script type="text/javascript"
	src="${root }resources/static/js/moviedetail.js"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;500&display=swap');
</style>
<link type="text/css" rel="stylesheet"
	href="${root }resources/static/css/moviedetail.css">
</head>
<body>
	<header>
		<%@ include file="../module/header.jsp"%>
	</header>
<body>
	<div class="bgcolor"></div>
	<div class="inner-wrap">
		<div>
			<%@ include file="../module/movie_infocontainer.jsp"%>
			<div id="info-menu" class="pt-5">
				<div class="menues">
					<span class="menu">영화 정보</span>
					<span class="menu-selected">한줄평</span>
					<span class="menu">무비포스트</span>
					<span class="menu">스틸컷</span>
				</div>
			</div>
		</div>		
		<!-- 아영 코드 시작 -->
		<div class="line-cnt mt-5"><h4><span id="title">${movie.title }</span> 에 대한 리뷰가 <span id="linecnt">${initPagingInfo.totalrow }</span><span id="extra">개</span> 있어요!</h4></div>
		<div class="form-group input-container">
			<div class="starForm">
				<c:forEach begin="1" end="5" varStatus="i" >
					<span id="${i.index }" onclick="star(${i.index });">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
					  		<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						</svg>
					</span>
				</c:forEach>
			</div>
			<textarea class="form-control input" name="line" placeholder="한줄평을 입력해주세요." rows="2" oninput="realtimeCheckcnt(this);"></textarea>
			<button type="button" class="btn btn-primary submit" onclick="submit(${movie.id }, 1, 3);">한줄평 등록</button>					
		</div>
		<div class="currcnt-outer">
			<div class="currcnt">
				<span id="currcnt">0</span><span>/100</span>
			</div>
		</div>
		
		<div class="linelist"><!-- table -->
			<c:forEach var="line" items="${initLinelist }">
				<div class="lineone-outer">
					<div class="user-info">
						<!-- <img src=""> -->
						<span>${line.email }</span>				
					</div>
					<div class="lineone">

						<div class="line-star">${line.star }</div>
						<div class="line-contents">${line.contents }</div>
						<div class="line-gcntIcon" onclick="incGcnt(this, ${line.id });">
							<svg width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
										<path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
							</svg>
						</div>
						<div class="line-gcnt">${line.gcnt }</div>
						<div class="line-opt">
							<svg width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
								<path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
							</svg>
						</div>
					</div>
					<!-- 말풍선 -->
					<div class="line-popup">
						<div class="tail"></div>
						<ul>
							<li class="del" name="del" onclick="deleteLine(this, ${line.id });">삭제</li>
							<li class="alarm">신고</li>
						</ul>
					</div>
				</div>
				<div class="line-date"><span class="cdate">${line.cdate }</span></div>
			</c:forEach>
		</div>
	
		<!-- 페이징 처리 -->
		<!-- 자바스크립트로 prev, next -->
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" onclick="" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item active"><a class="page-link" onclick="paging(this, ${movie.id }, ${initPagingInfo.totalrow }, ${initPagingInfo.max_page });">1</a></li>
		    <li class="page-item"><a class="page-link" onclick="paging(this, ${movie.id }, ${initPagingInfo.totalrow }, ${initPagingInfo.max_page });">2</a></li>
		    <li class="page-item"><a class="page-link" onclick="paging(this, ${movie.id }, ${initPagingInfo.totalrow }, ${initPagingInfo.max_page });">3</a></li>
		    <li class="page-item">
		      <a class="page-link" onclick="" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		<!-- 아영 코드 끝 -->
	</div>
	
	
	
	<div id="modal" class="modal-container">
		<div class="modal-window">
			<div class="modal-title">
				<h5>공유하기</h5>
			</div>
			<div class="close-btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
				  <path
						d="M1.293 1.293a1 1 0 0 1 1.414 0L8 6.586l5.293-5.293a1 1 0 1 1 1.414 1.414L9.414 8l5.293 5.293a1 1 0 0 1-1.414 1.414L8 9.414l-5.293 5.293a1 1 0 0 1-1.414-1.414L6.586 8 1.293 2.707a1 1 0 0 1 0-1.414z" />
				</svg>
			</div>
			<hr>
			<div class="copybox">
				<input type="text" readonly
					value="http://localhost:8080/movie/detail?mid=${movie.getId()}">
				<button>URL 복사</button>
			</div>
		</div>
	</div>
</body>

<footer>
	<%@ include file="../module/footer.jsp"%>
</footer>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/static/js/moviedetail.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/static/js/line.js"></script>
<script type="text/javascript">
window.onload = function() {
	let max = ${initPagingInfo.max_page };
	// 해결하기
	if(max <= 3) {
		document.querySelectorAll('.page-link')[0].removeAttribute('onclick');
		document.querySelectorAll('.page-link')[0].style.color = 'lightgray';
		document.querySelectorAll('.page-link')[4].removeAttribute('onclick');
		document.querySelectorAll('.page-link')[4].style.color = 'lightgray';
		
		if(max < 3) {
			for(let i = 1; i <= (3 - max); i++) {
				document.querySelectorAll('.page-link')[i + max].removeAttribute('onclick');
				document.querySelectorAll('.page-link')[i + max].style.color = 'lightgray';
			}
		}
	}
}


function submit(mid, aid, star) {
	// check Valid
	var ele = document.getElementsByName('line');
	if(ele[0].value.length == 0) {
		ele[0].focus();
		return;
	}
	
	if(ele[0].value.length > 100) {
		alert('100자 이내로 작성해주시기 바랍니다.');
		return;
	}
	
	var contents = document.getElementsByName('line')[0].value;
	var linecnt = document.getElementById('linecnt');

	// submit
	$.ajax({
		url: "/seenema/lineajax/add",
		type: "get",
		datatype: "json",
		data: {
			mid: mid,
			aid: aid,
			contents: contents,
			star: star
		},
		success: function(data) {
			if(data.res == "success") {
				document.getElementsByName('line')[0].value = '';
				document.getElementById('currcnt').innerText = '0';
				linecnt.innerText = Number(linecnt.innerText) + 1;
				
				var div = document.createElement('div');
				div.innerHTML = "<div class='user-info'><span></span></div>";
				div.innerHTML += "<div class='lineone'><div class='line-star'></div><div class='line-contents'></div><div class='line-gcntIcon'></div><div class='line-gcnt'></div><div class='line-opt'></div></div>";
				div.innerHTML += "<div class='line-date'><span id='cdate'></span></div>";
				
				
				var linelist = document.querySelector('.linelist');
				linelist.prepend(div);

				var userinfo = document.querySelector('.user-info');
				userinfo.innerText = data.line.email;
				
				var lineEle = $(linelist).find("div[class|='line']");
				lineEle[0].innerText = data.line.star;
				lineEle[1].innerText = data.line.contents;
				lineEle[2].innerHTML = "<svg width='16' height='16' fill='currentColor' class='bi bi-hand-thumbs-up' viewBox='0 0 16 16'><path d='M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z'/></svg>";
				lineEle[2].onclick = function() {
					incGcnt(lineEle[2], data.line.id);
				};
				lineEle[3].innerText = data.line.gcnt;
				lineEle[4].innerHTML = "<svg width='16' height='16' fill='currentColor' class='bi bi-three-dots-vertical' viewBox='0 0 16 16'><path d='M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z'/></svg>";
				/*
				spanlist[5].querySelector('ul > li[name=del]').onclick = function(e) {
					deleteLine(e.target, data.line.id);
				}; */
				lineEle[5].children[0].innerText = data.line.cdate;
			}
		}
	});
	
	if(linecnt.innerText > 10) {
		
	}
}
</script>
</html>