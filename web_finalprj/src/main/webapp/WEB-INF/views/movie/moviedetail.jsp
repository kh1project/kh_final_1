<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>"영화제목" - 주요정보</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/static/css/common.css">
<style>
.poster {
	position: absolute;
	width: 270px;
	height: 374px;
	top: 50px;
	right: 30px;
}

.rating {
	width: 23px;
	height: 23px;
	border-radius: 11px;
	top: 23px;
	left: 8px;
	position: absolute;
	text-shadow: 2px 2px 2px rgb(0 0 0/ 80%);
}

.info-container {
	height: 520px;
	margin: 0 0 40px 0;
	position: relative;
	overflow: hidden;
}

.bgcolor {
	background-color: black;
	width: 100%;
	height: 520px;
	position: absolute;
}

.bg-poster {
	position: absolute;
	width: 100%;
	opacity: .3;
}

.title {
	padding-top: 15px; font-size : 46px;
	width: 800px;
	display: block;
	font-size: 46px;
}

.util-btn {
	display: block;
}

.info {
	position: relative;
	z-index: 1;
	padding-left: 15px;
}

.info>* {
	color: white;
	display: block;
}

.like-btn {
	border: 2px solid rgba(255, 255, 255, 0.4);
	border-radius: 5px;
	padding: 2px 5px 2px 5px;
	width: 100px;
	text-align: center;
	font-size: 14pt;
}
</style>
<script>
window.onload = function(){
	const likeBtn = document.querySelector(".like-btn");

	likeBtn.onmouseover = function() {
		likeBtn.style.backgroundColor = "white";
		likeBtn.style.color = "black";
	}

	likeBtn.onmouseout = function() {
		likeBtn.style.backgroundColor = "transparent";
		likeBtn.style.color = "white";
	}
}
</script>
</head>
<body>
	<header>
		<%@ include file="../module/header.jsp"%>
	</header>
<body>
	<div class="bgcolor"></div>
	<div class="inner-wrap">
		<div>
			<div class="info-container">
				<img class="bg-poster" alt="movie-id${movie.getId() }-img"
					src="/resources/imgs/movie/${movie.getId() }/poster/movie_image (1).jpg">
				<div class="info">
					<div class="title ">${movie.getTitle()}</div>
					<div class="util-btn">
						<div class="like-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
						  		<path
									d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
							</svg>${movie.getGcnt() }
						</div>
					</div>
					<div class="info">
						<div></div>
						<div></div>
						<div>평점 ${movie.getGrade() }</div>
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
			<div class="reserve pt-5">예매</div>
			<h4>${movie.getId() }</h4>
			<h4>${movie.getSummary() }</h4>
			<h4>${movie.getType() }</h4>
			<h4>${movie.getDirector() }</h4>
			<h4>${movie.getGenre() }</h4>
			<h4>${movie.getRunningtime() }</h4>
			<h4>${movie.getRating() }</h4>
			<h4>${movie.getActor() }</h4>
			<h4>${movie.getPlaydate() }</h4>
		</div>
	</div>
</body>

<footer>
	<%@ include file="../module/footer.jsp"%>
</footer>

</body>
</html>