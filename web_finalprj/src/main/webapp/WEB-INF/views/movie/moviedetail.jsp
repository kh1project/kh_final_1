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
					src="/resources/images/movie/${movie.getId() }/poster/movie_image (1).jpg">
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
							<span class="rating badge badge-pill badge-success">ALL</span>
						</c:when>
						<c:when test="${movie.getRating() eq 12 }">
							<span class="rating badge badge-pill badge-primary">12</span>
						</c:when>
						<c:when test="${movie.getRating() eq 15 }">
							<span class="rating badge badge-pill badge-warning">15</span>
						</c:when>
						<c:otherwise>
							<span class="rating badge badge-pill badge-danger">청불</span>
						</c:otherwise>
					</c:choose>
				</p>
				<img class="rounded img-fluid float-right"
					alt="${movie.getTitle() }"
					src="/resources/images/movie/${movie.getId() }/poster/movie_image.jpg">
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
						<p>등급 : ${movie.getRating() }세이상관림가</p>
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
		<div class="review">
			<div class="review-cnt">"영화에 대한"리뷰가 "몇개" 있어요</div>
			<div class="input-container">리뷰 입력창</div>
			<!--  반복문 -->
			<div class="review-list">
				<div class="user-info">유저정보</div>
				<div class="review-score">별점</div>
				<div class="review-context">리뷰 내용</div>
				<div class="review-date">리뷰작성일</div>
				<div class="review-goods">따봉</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
				<div>줄 늘리기</div>
			</div>
		</div>
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
</html>