<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영시간표</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
hr { margin: 3px; }
.container { }
.row { text-align: center; }
.col { text-align: center; background-color: white; }
.list-group {
    max-height: 800px;
    margin-bottom: 10px;
    overflow: auto;
    overflow-x: hidden;
    -webkit-overflow-scrolling: touch;
}
.list-group-item {
	width: 100%;
}
#title {
	font-weight: bold;
	margin-top: 5px;
	padding: 10px;
	background-color: black;
	color: white;
}
#sub { 
	font-weight: bold;
	margin-top: 10px;
}
::-webkit-scrollbar {
  width: 10px;
  
}
::-webkit-scrollbar-thumb {
    background-color: #2f3542;
</style>
<body class="pt-5">
  <%@ include file="../module/header.jsp" %>
	<div class="container">
	  <div class="row" id="title">
	  	<div class="col-4">
	  	  <label>영화관</label>
	  	</div>
	  	<div class="col-4">
	  	  <label>영화선택</label>
	  	</div>
	  	<div class="col-4">
	  	  <label>2021-07-01(오늘)</label>
	  	</div>
	  </div>
	  <div class="row">
	    <div class="col">
	      <div class="row">
	        <div class="col">
	          <label id="sub">전체</label><hr>
	          <div class="row">
	            <div class="col">
				  <div class="list-group list-group-flush" id="list-tab" role="tablist">
				    <a class="list-group-item list-group-item-action" id="list-seoul-list" data-toggle="list" href="#list-seoul" role="tab" aria-controls="seoul">서울</a>
				    <a class="list-group-item list-group-item-action" id="list-gyeonggi-list" data-toggle="list" href="#list-gyeonggi" role="tab" aria-controls="gyeonggi">경기</a>
				    <a class="list-group-item list-group-item-action" id="list-incheon-list" data-toggle="list" href="#list-incheon" role="tab" aria-controls="incheon">인천</a>
				    <a class="list-group-item list-group-item-action" id="list-daejeon-list" data-toggle="list" href="#list-daejeon" role="tab" aria-controls="daejeon">대전/충청/세종</a>
				    <a class="list-group-item list-group-item-action" id="list-busan-list" data-toggle="list" href="#list-busan" role="tab" aria-controls="busan">부산/대구/경상</a>
				    <a class="list-group-item list-group-item-action" id="list-gwanju-list" data-toggle="list" href="#list-gwanju" role="tab" aria-controls="gwanju">광주/전라</a>
				    <a class="list-group-item list-group-item-action" id="list-gangwon-list" data-toggle="list" href="#list-gangwon" role="tab" aria-controls="gangwon">강원</a>
				  </div>
			    </div>
	          </div>
	        </div>
	        <div class="col">
	          <label id="sub">지점</label><hr>
	          <div class="row">
	            <div class="col">
				  <div class="list-group list-group-flush" id="list-tab" role="tablist">
				  	<!-- 서울 -->
				    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">강남</a>
				    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">강남대로</a>
				    <!-- 경기 -->
				    <a class="list-group-item list-group-item-action" id="list-daejeon-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">고양스타필드</a>
				    <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">김포한강신도시</a>
				    <!-- 인천 -->
				    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">검단</a>
				    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">송도</a>
				    <!-- 대전/충청/세종 -->
				    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">공주</a>
				    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">논산</a>
				    <!-- 부산/대구/경상 -->
				    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">경북도청</a>
				    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">경산하양</a>
				    <!-- 광주/전라 -->
				    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">광주상무</a>
				    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">송광주하남</a>
				    <!-- 강원 -->
				  </div>
			    </div>
	          </div>
	        </div>
	      </div>
	    </div>
	    <div class="col">
	      <div class="row">
	        <div class="col">
			  <div class="list-group list-group-flush" id="list-tab" role="tablist">
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">#위왓치유</a>
			    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">그 여름, 가장 차가웠던</a>
			    <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">그레타 툰베리</a>
			    <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">극장판 귀멸의 칼날 무한열차편</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">까치발</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">낫아웃</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">노매드랜드</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">더 파더</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">루카</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">메이드 인 루프탑</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">발신제한</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">뱅드림! 로젤리아 에피소드 1 약속</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">분노의 질주 더 얼티메이트</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">아야와 마녀</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">애플</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">야구소녀</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">여고괴담 여섯번째 이야기 모교</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">인트로덕션</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">청춘선거</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">캐시트럭</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">컨저링 3 악마가 시켰다</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">콰이어트 플레이스2</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">크루엘라</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">클라이밍</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">킬러의 보디가드2</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">패터슨</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">프로페서 앤 매드맨</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">학교 가는길</a>
			    <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">혼자 사는 사람들</a>
			  </div>
			</div>
		  </div>
	    </div>
	    <div class="col">
	      <div class="row">
	        <div class="col">
	          <label id="sub">캘린더 화면</label>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
  <%@ include file="../module/footer.jsp" %>
</body>
</html>