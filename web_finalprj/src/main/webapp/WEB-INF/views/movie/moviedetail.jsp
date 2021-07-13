<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>"${movie.getTitle() }" - 주요정보</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/static/css/common.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/static/css/line.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/static/js/line.js"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;500&display=swap')
	;
</style>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/static/css/moviedetail.css">
<!-- 
<c:url var="addUrl" value="/lineajax/add" />
<c:url var="incGcntUrl" value="/lineajax/incGcnt" />
<c:url var="deleteUrl" value="/lineajax/delete" />
<c:url var="pagingUrl" value="/lineajax/paging" />
-->
</head>
<body>
	<header>
		<%@ include file="../module/header.jsp"%>
	</header>
<body class="pt-5">
	<div class="bgcolor"></div>
	<div class="inner-wrap">
		<div>
			<div class="info-container">
				<img class="bg-poster" alt="movie-id${movie.getId() }-img"
					src="/resources/imgs/movie/${movie.getId() }/poster/movie_image (1).jpg">
				<div class="info">
					<div class="title ">${movie.getTitle()}</div>
					<div class="subtitle ">${movie.getSubtitle()}</div>
					<div class="util-btn">
						<c:set var="liked" value="false" />
						<c:forEach var="likeList" items="${likeList }">
							<c:if test="${movie.getId() eq likeList.getMid() }">
								<c:set var="liked" value="true" />
							</c:if>
						</c:forEach>
						<c:choose>
							<c:when test='${liked eq "true" }'>
								<div class="like-btn" onclick="doUnlike(${movie.getId() })">
									♥${movie.getGcnt() }</div>
							</c:when>
							<c:otherwise>
								<div class="like-btn" onclick="doLike(${movie.getId() })">
									♡${movie.getGcnt() }</div>
							</c:otherwise>
						</c:choose>

					</div>
					<div class="score-info">
						<div class="score">
							<p class="score-title">평점</p>
							<p class="score-data">${movie.getGrade() }</p>
						</div>
						<div class="rank">
							<p class="score-title">예매율</p>
							<p class="score-data">${reserveRating }%</p>
						</div>
						<div class="float-right" id="right-util-btn">
							<button type="button" class="share">
								<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
									fill="white" class="bi bi-share svg-btn" viewBox="0 -2 20 20">
  								<path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z" />
								</svg>
							</button>
							<a class="reserve" href="/reserve?mid=${movie.getId()}">예매하기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="poster float-right">
				<p>
					<c:url var="rating" value="/resources/imgs/static/rating/" />
					<c:choose>
						<c:when test="${movie.getRating() eq 0 }">
							<img class="rating" src="${rating }ratingAll_ico1.png">
						</c:when>
						<c:when test="${movie.getRating() eq 12 }">
							<img class="rating" src="${rating }ratingAll_ico2.png">
						</c:when>
						<c:when test="${movie.getRating() eq 15 }">
							<img class="rating" src="${rating }ratingAll_ico3.png">
						</c:when>
						<c:otherwise>
							<img class="rating" src="${rating }ratingAll_ico4.png">
						</c:otherwise>
					</c:choose>
				</p>
				<img class="rounded img-fluid float-right"
					alt="${movie.getTitle() }"
					src="/resources/imgs/movie/${movie.getId() }/poster/movie_image.jpg">
			</div>
			<div class="content-text">
				<div class="summary">${movie.getSummary() }</div>
				<hr>
				<div class="movie-textinfo">
					<div>상영타입 : ${movie.getType() }</div>
					<div style="margin-bottom: -15px">
						<p>감독 : ${movie.getDirector() }</p>
						<p class="partition"></p>
						<p>장르 : ${movie.getGenre() } / ${movie.getRunningtime() }분</p>
						<p class="partition"></p>
						<p>등급 : ${movie.getRating() }세이상관람가</p>
						<p class="partition"></p>
						<p>개봉일 : ${movie.getPlaydate() }</p>
					</div>
					<p>출연진 : ${movie.getActor() }</p>
				</div>
			</div>
		</div>
		<hr>
		<div class="info-graph">여기쯤 인포그래픽이 있으면 좋겟다.</div>
		<hr>
		
		<!-- 아영 코드 시작 -->
		<div class="line-cnt mt-5"><h4><span id="title">${movie.title }</span> 에 대한 리뷰가 <span id="linecnt">${initPagingInfo.totalrow }</span><span id="extra">개</span> 있어요!</h4></div>
		<div class="form-group input-container">
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
		    <li class="page-item active"><a class="page-link" onclick="paging(this);">1</a></li>
		    <li class="page-item"><a class="page-link" onclick="paging(this);">2</a></li>
		    <li class="page-item"><a class="page-link" onclick="paging(this);">3</a></li>
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
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
				  <path d="M1.293 1.293a1 1 0 0 1 1.414 0L8 6.586l5.293-5.293a1 1 0 1 1 1.414 1.414L9.414 8l5.293 5.293a1 1 0 0 1-1.414 1.414L8 9.414l-5.293 5.293a1 1 0 0 1-1.414-1.414L6.586 8 1.293 2.707a1 1 0 0 1 0-1.414z"/>
				</svg>
			</div>
			<hr>
			<div class="copybox">
				<input type="text" readonly value="http://localhost:8080/movie/detail?mid=${movie.getId()}">
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
</script>
</html>