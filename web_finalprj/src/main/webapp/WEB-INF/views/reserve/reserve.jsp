<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 - SEENEMA</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
hr { margin: 3px; }
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
  <c:url var="location" value="/reserve" />
  <form method="get" action="${location }/schedule">
	<div class="container">
	  <div class="row" id="title">
	  	<div class="col-6">
	  	  <label>지역</label>
	  	</div>
	  	<div class="col-6">
	  	  <label>지점</label>
	  	</div>
	  </div>
	  <div class="row">
        <div class="col">
          <label id="sub">전체</label><hr>
          <div class="row">
            <div class="col">
			  <div class="list-group list-group-flush" id="list-tab" role="tablist">
				<!-- 지역 클릭시 active 활성화 -->
				<c:choose>
				  <c:when test="${param.location eq '서울' }">
			    	<a class="list-group-item list-group-item-action active" id="list-seoul-list"
			    	href="${location }?location=서울" role="tab" aria-controls="seoul">서울</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-seoul-list"
			    	href="${location }?location=서울" role="tab" aria-controls="seoul">서울</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '경기' }">
			        <a class="list-group-item list-group-item-action active" id="list-gyeonggi-list"
				    href="${location }?location=경기" role="tab" aria-controls="gyeonggi">경기</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-gyeonggi-list"
				    href="${location }?location=경기" role="tab" aria-controls="gyeonggi">경기</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '인천' }">
			        <a class="list-group-item list-group-item-action active" id="list-incheon-list"
				    href="${location }?location=인천" role="tab" aria-controls="incheon">인천</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-incheon-list"
				    href="${location }?location=인천" role="tab" aria-controls="incheon">인천</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '대전/충청/세종' }">
			        <a class="list-group-item list-group-item-action active" id="list-daejeon-list"
				    href="${location }?location=대전/충청/세종" role="tab" aria-controls="daejeon">대전/충청/세종</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-daejeon-list"
				    href="${location }?location=대전/충청/세종" role="tab" aria-controls="daejeon">대전/충청/세종</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '부산/대구/경상' }">
			        <a class="list-group-item list-group-item-action active" id="list-busan-list"
				    href="${location }?location=부산/대구/경상" role="tab" aria-controls="busan">부산/대구/경상</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-busan-list"
				    href="${location }?location=부산/대구/경상" role="tab" aria-controls="busan">부산/대구/경상</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '광주/전라' }">
			        <a class="list-group-item list-group-item-action active" id="list-gwangju-list"
				    href="${location }?location=광주/전라" role="tab" aria-controls="gwangju">광주/전라</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-gwangju-list"
				    href="${location }?location=광주/전라" role="tab" aria-controls="gwangju">광주/전라</a>
			      </c:otherwise>
			    </c:choose>
			    <c:choose>
			      <c:when test="${param.location eq '강원' }">
			        <a class="list-group-item list-group-item-action active" id="list-gangwon-list"
				    href="${location }?location=강원" role="tab" aria-controls="gangwon">강원</a>
			      </c:when>
			      <c:otherwise>
			        <a class="list-group-item list-group-item-action" id="list-gangwon-list"
				    href="${location }?location=강원" role="tab" aria-controls="gangwon">강원</a>
			      </c:otherwise>
			    </c:choose>
			  </div>
		    </div>
          </div>
        </div>
        <div class="col">
          <c:choose>
	        <c:when test="${param.location != '' }">
              <label id="sub">지점</label><hr>
            </c:when>
            <c:otherwise>
              <label id="sub">지역을 선택해주세요</label>
            </c:otherwise>
            </c:choose>
          <div class="row">
            <div class="col">
			  <div class="list-group list-group-flush" id="list-tab" role="tablist">
			    <!-- 지점리스트 출력 -->
			  	<c:forEach var="branchDTO" items="${branchlist}" varStatus="status">
			  	  <c:choose>
			  	    <c:when test="${branchDTO.name eq param.name }">
			  	      <a class="list-group-item list-group-item-action active" id="list-name-list"
			  	        href="${location }?location=${param.location }&name=${branchDTO.name }" role="tab" aria-controls="home">
				      ${branchDTO.name}</a>
			  	    </c:when>
			  	    <c:otherwise>
		  	    	  <a class="list-group-item list-group-item-action" id="list-name-list"
		  	    	    href="${location }?location=${param.location }&name=${branchDTO.name }" role="tab" aria-controls="home">
			          ${branchDTO.name}</a>
			  	    </c:otherwise>
			  	  </c:choose>
			    </c:forEach>
			  </div>
		    </div>
          </div>
        </div>
      </div>
      <div>
       <input type="hidden" name="location" value="${param.location }">
       <input type="hidden" name="name" value="${param.name }">
       <input type="submit" value="다음">
      </div>
	</div>
  </form>
  <%@ include file="../module/footer.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	$('.list-group-item').click(function(e){
		$.ajax({
			url: "/schedule",
			type: "get",
			datatype: "json",
			data: {
				location: e.target.innerText
			},
			success: function(data) {
				if(data.res == "success") {
					console.log("확인");
				}
			}
		});
	})
})
</script>
</body>
</html>