<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>박스오피스 - SEENEMA</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
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
<body>
  <%@ include file="../module/header.jsp" %>
  <header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
  <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
    <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/RCAhiGJsUUE/1920x1080')">
      <div class="carousel-caption d-none d-md-block">
        <h3 class="display-4">First Slide</h3>
        <p class="lead">This is a description for the first slide.</p>
      </div>
    </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
    <div class="carousel-item" style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1920x1080')">
      <div class="carousel-caption d-none d-md-block">
        <h3 class="display-4">Second Slide</h3>
        <p class="lead">This is a description for the second slide.</p>
      </div>
    </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
    <div class="carousel-item" style="background-image: url('https://source.unsplash.com/O7fzqFEfLlo/1920x1080')">
      <div class="carousel-caption d-none d-md-block">
        <h3 class="display-4">Third Slide</h3>
        <p class="lead">This is a description for the third slide.</p>
      </div>
    </div>
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
  </header>
  <div class="row">
    <div class="col-md-8">
      <img class="img-fluid" src="http://placehold.it/750x500" alt="">
    </div>

    <div class="col-md-4">
      <h3 class="my-3">영화 제목</h3>
      <p>대충 줄거리</p>
      <h3 class="my-3">영화 정보</h3>
      <ul>
        <li>장르</li>
        <li>감독</li>
        <li>출연</li>
      </ul>
      <button type="button">❤좋아요</button>
      <button type="button">예매하기</button>
    </div>
  </div>
  <%@ include file="../module/footer.jsp" %>
</body>
</html>