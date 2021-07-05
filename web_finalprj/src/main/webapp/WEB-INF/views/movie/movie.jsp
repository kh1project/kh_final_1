<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>박스오피스 - SEENEMA</title>
<script>
/* $.ajax({
	url: , 
	type: ,
	datatype: "json",
	data: {},
	success: function(data){},
	error: function(){}
}) */
	function mouseoverUnlike(mid){
		document.querySelector('#unlike-'+mid).style.backgroundColor = "lightgray";
	}
	
	function mouseoverLike(mid){
		document.querySelector('#like-'+mid).style.backgroundColor = "lightgray";
	}
	
	function mouseoverReserve(mid){
		document.querySelector('#reserve-'+mid).style.backgroundColor = "lightgray";
	}
	
	function mouseoutUnlike(mid){
		document.querySelector('#unlike-'+mid).style.backgroundColor = "transparent";
	}
	
	function mouseoutLike(mid){
		document.querySelector('#like-'+mid).style.backgroundColor = "transparent";
	}
	
	function mouseoutReserve(mid){
		document.querySelector('#reserve-'+mid).style.backgroundColor = "transparent";
	}
	
	function iLikeIt(mid){
		$.ajax({
			url: "/movieajax/like", 
			type: "post",
			datatype: "json",
			data: {
				userid : 1,
				"mid" : mid
			},
			success: function(data){
				document.querySelector("#unlike-"+mid).innerHTML = "<span class=\"inner-btn liked\" id=\"like-"+mid+"\" onmouseover=\"mouseoverLike("+mid+")\" onmouseout=\"mouseoutLike("+mid+")\" onclick=\"iHateIt("+mid+")\">"+${movieList.get(mid).getGcnt()}+"</span>";
				console.log("likeit");
				console.log("mid -> " + ${movieList.get(mid).getId()});
			},
			error: function(){
				console.log("like 실패");
			}
		})
	}
	
	function iHateIt(mid){
		$.ajax({
			url: "/movieajax/unlike", 
			type: "post",
			datatype: "json",
			data: {
				userid : 1,
				"mid" : mid
			},
			success: function(data){
				document.querySelector("#like-"+mid).innerHTML = "<span class=\"inner-btn unlike\" id=\"unlike-"+mid+"\" onmouseover=\"mouseoverUnlike("+mid+")\" onmouseout=\"mouseoutUnlike("+mid+")\" onclick=\"iLikeIt("+mid+")\">"+${movieList.get(mid).getGcnt()}+"</span>";
				console.log("hateit");
			},
			error: function(){
				console.log("like 실패");
			}
		})
	}
	
	/* <span class="inner-btn unlike" id="unlike-${item.getId() }"
		onmouseover="mouseoverUnlike(${item.getId() })" 
		onmouseout="mouseoutUnlike(${item.getId() })" 
		onclick="iLikeIt(${item.getId() })">
			${item.gcnt } 
		</span> */ 
	
	
</script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/static/css/movie.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/static/css/common.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;500&display=swap')
	;
</style>
<style type="text/css">
* {
	font-family: 'Noto Sans KR', sans-serif;
}
ul {
	list-style: none;
	padding-left: 10px;
}
.carousel-item {
	height: 65vh;
	min-height: 350px;
	background: no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
</head>
<body class="pt-5">
	<!-- ----------------<header>---------------- -->
	<header>
		<%@ include file="../module/header.jsp"%>
	</header>

	<!-- ----------------</header>---------------- -->
	<!-- ----------------<body>---------------- -->
	<container id="container">
	<div class="page-util">
		<div class="inner-wrap">
			<span class="svg"> <a href="/index"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd"
							d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
					  <path fill-rule="evenodd"
							d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
					</svg>
			</a>
			</span> <span class="svg"> <svg xmlns="http://www.w3.org/2000/svg"
					width="16" height="16" fill="currentColor"
					class="bi bi-caret-right" viewBox="0 0 16 16">
				  <path
						d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z" />
				</svg>
			</span> <span class="page-util-text"> <a href="/movie"> 영화 </a>
			</span>
		</div>
	</div>
	<div class="movies-container">
		<div class="inner-wrap">
			<h2>전체영화</h2>
			<c:set var="rank" value="0" />
			<fmt:formatNumber value="${rank }" type="number" var="numRank" />
			<c:forEach var="item" items="${movieList }">
				<div class="movies">
					<div class="poster">
						<div class="rank">${numRank = numRank+1 }</div>
						<a href="/movie/detail?mid=${item.getId() }"><img
							src="/resources/imgs/movie/${item.getId() }/poster/movie_image.jpg"
							alt="${item.getTitle() }"></a>
					</div>
					<div class="title">
						<c:url var="rating" value="/resources/imgs/static/rating/" />
						<c:choose>
							<c:when test="${item.getRating() eq 0 }">
								<img class="rating" src="${rating }ratingAll_ico1.png">
							</c:when>
							<c:when test="${item.getRating() eq 12 }">
								<img class="rating" src="${rating }ratingAll_ico2.png">
							</c:when>
							<c:when test="${item.getRating() eq 15 }">
								<img class="rating" src="${rating }ratingAll_ico3.png">
							</c:when>
							<c:otherwise>
								<img class="rating" src="${rating }ratingAll_ico4.png">
							</c:otherwise>
						</c:choose>
						${item.getTitle() }
					</div>
					<div class="rate-date">개봉일 ${item.playdate }</div>
					<div class="reserve-rating">예매율
						${reserveRating.get(item.getId()) }%</div>
					<div class="btn-util" id="btns-${item.getId() }">
					<c:forEach var="likeList" items="${likeList }">
					<c:set var="liked" value="false"/>
						<c:if test="${item.getId() eq likeList.getMid() }">
							<c:set var="liked" value="true" />
						</c:if>
					</c:forEach>
					<c:choose>
						<c:when test="${liked eq 'true' }" >
							<span id="like-${item.getId() }">
								<span class="inner-btn liked" 
								onmouseover="mouseoverLike(${item.getId() })" 
								onmouseout="mouseoutLike(${item.getId() })" 
								onclick="iHateIt(${item.getId() })">
									${item.getGcnt() } 
								</span>
							</span>
						</c:when>
						<c:otherwise>
							<span id="unlike-${item.getId() }">
								<span class="inner-btn unlike"
								onmouseover="mouseoverUnlike(${item.getId() })" 
								onmouseout="mouseoutUnlike(${item.getId() })" 
								onclick="iLikeIt(${item.getId() })">
									${item.getGcnt() } 
								</span> 
							</span>
						</c:otherwise>
					</c:choose>
						<span class="inner-btn" id="reserve-${item.getId() }" 
						onmouseover="mouseoverReserve(${item.getId() })" 
						onmouseout="mouseoutReserve(${item.getId() })"> 
							예매
						</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</container>
	<!-- ----------------</body>---------------- -->
	<!-- ----------------<footer>---------------- -->
	<footer>
		<%@ include file="../module/footer.jsp"%>
	</footer>
	<!-- ----------------</footer>---------------- -->
</body>
</html>