<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SEENEMA - movie theater</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/static/css/font.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/static/css/main.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<c:url var="url" value="/mainAjax" />
<script type="text/javascript">
	function like(id) {
		$.ajax({
			url: "${url }",
			type: "get",
			datatype: "json",
			data: {
				id: id
			},
			success: function(data) {
				if(data.res == "success") {
					document.querySelector('#gcnt').innerText = data.gcnt;
					var heart = document.querySelector('#heart');
					heart.innerText = "♥ ";
					heart.style.color = "red";
				}
			},
			/*error: function(request, status, error) {
				console.log("error code: " + request.status + "\nmessage: " + request.responseText + "\nerror: " + error);
			}*/
			
		});
	}
</script>
</head>
<!-- 
<style>
	#boxoffice {
		background-image: url('https://source.unsplash.com/RCAhiGJsUUE/1920x1080');
		color: white;
		padding: 50px 0px 100px;
	}
</style>
-->
<body class="pt-5">
    <%@ include file="./module/header.jsp" %>

	<div>
	  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	    <ol class="carousel-indicators">
	      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	    </ol>
	    <div class="carousel-inner" role="listbox">
	    
	      <c:forEach var="item" items="${carousel }" varStatus="status">
	      	<c:choose>
	      		<c:when test="${status.index == 0 }">
	      			<div class="carousel-item active">
	      		</c:when>
	      		<c:otherwise>
	      			<div class="carousel-item">
	      		</c:otherwise>
	      	</c:choose>
	      		<img src="<c:url value="/resources/img/${item }/stillcut/movie_image.jpg" />">
	      	</div>
	      </c:forEach>
	    </div>
	   	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	          <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	          <span class="carousel-control-next-icon" aria-hidden="true"></span>
	          <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>
	    
	  <%--
	      <!-- Slide One - Set the background image for this slide in the line below -->
	      <div class="carousel-item active">
	        <img src="<%=request.getContextPath() %>/resources/img/크루엘라 (Cruella)/poster/movie_image.jpg">
	        <!-- <div class="carousel-caption d-none d-md-block">
	          <h3 class="display-4">First Slide</h3>
	          <p class="lead">This is a description for the first slide.</p>
	        </div> -->
	      </div>
	      <!-- Slide Two - Set the background image for this slide in the line below -->
	      <div class="carousel-item">
	        <img src="<%=request.getContextPath() %>/resources/img/분노의 질주 더 얼티메이트 (Fast & Furious 9 THE FAST SAGA)/poster/movie_image.jpg">
	        <!-- <div class="carousel-caption d-none d-md-block">
	          <h3 class="display-4">Second Slide</h3>
	          <p class="lead">This is a description for the second slide.</p>
	        </div> -->
	      </div>
	      <!-- Slide Three - Set the background image for this slide in the line below -->
	      <div class="carousel-item">
	        <img src="<%=request.getContextPath() %>/resources/img/발신제한 (HARD HIT)/poster/movie_image.jpg">
	        <!-- <div class="carousel-caption d-none d-md-block">
	          <h3 class="display-4">Third Slide</h3>
	          <p class="lead">This is a description for the third slide.</p>
	        </div> -->
	      </div>
	--%>

	<div id="boxoffice">
		<div class="caption">
			박스오피스
		</div>
		<div class="container-fluid">
			<a href="<c:url value="/movie" />"><p id="more">영화 더 보기<span style="display: inline-block; font-size: xx-large">+</span></p></a>
			<div class="row">
			  <div class="col-md-2">
			  </div>
			  
			  <c:forEach var="item" items="${boxoffice }" varStatus="status" >
				  <div class="col-md-2">
				    <div class="card">
				      <div class="card-body p-0">
				  		<a href=""><img class="card-img mb-2" src="<c:url value="/resources/img/${item.id }/poster/movie_image.jpg" />"></a>
				  		<div class="cover">
					        <button class="btn btn1 btn-outline-light" onclick="like(${item.id });"><span id="heart">♡ </span><span id="gcnt">${item.gcnt }</span></button>
					        <a href="<c:url value="/reserve" />" class="btn btn2 btn-primary">예매하기</a>
					    </div>
				      </div>
				  	  <div class="card-img-overlay">
				      	<h1 class="card-title">${status.count }</h1>
				      </div>
				    </div>
				  </div> 

			  </c:forEach>
			  
			  <div class="col-md-2">
			  </div>
		   </div>
		</div>
	</div>	      

	
    <%@ include file="./module/footer.jsp" %>

<script type="text/javascript">	
	$(function(){
		// 이미지 슬라이드 컨트롤을 사용하기 위해서는 carousel를 실행해야한다.
		var target = $('#carouselExampleIndicators').carousel({
			// 슬라이딩 자동 순환 지연 시간
			// false로 설정하여 bootstrap에서는 cycle를 움직이지 못하게 한다..
			interval: false,
			// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
			pause: "hover",
			// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
			wrap: true,
			// 키보드 이벤트 설정 여부
			keyboard : true
			});

		// Interval를 설정해서 next가 아닌 prev로 하면 반대로 움직인다.
		setInterval(function() {
			target.carousel('prev');
			}, 3000);
	});
</script>
</body>
</html>