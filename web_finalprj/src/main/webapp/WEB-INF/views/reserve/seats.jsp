<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석선택</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<script>
	function seatinfo(seat) {
		alert(seat);
	}
	
	function person_value(person, updown){
		if(person.value > 0 && person.value < 6){
			switch(updown){
		        case"+":
		        	if(person.value != 5){
		        		person.value = parseInt(person.value) + 1;
		        	} else {
		        		alert('최대 5명 선택 가능합니다.');
		        	}
		    		break;
		        case"-":
		        	if(person.value != 1){
		        		person.value = parseInt(person.value) - 1;	
		        	} else {
		        		alert('최소 1명 선택 가능합니다.');
		        	}
		            break;
		    }
		}
	}
</script>
</head>
<style type="text/css">
main{
	width: 100%; height: 100%;
	margin: auto auto;
}

section.main {
	width: 800px; height: 500px;
	margin: auto auto;
	background: gray;
	justify-content: center;
	align-items: center;
}

div.seatfream {
	width: auto; height: auto;
	justify-content: center;
	text-align: center;
}

input.Screen{ 
	margin-bottom : 50px;
	width: 500px; height: 30px;
	font-size: 10pt;
	text-align: center;
}

input.seat {
	width: 30px; height: 30px;
	font-size: 8pt;
}

div.personner {
	padding: auto;
}

label.seat {
	width: 100px; height: 30px;
	border: 2px solid gray;
	border-radius: 5px;
	margin: 20px; padding: auto auto;
	background-color: white;
	font-size: 10pt; text-align: center;
}

input.personnel {
	width: 30px; height: 30px;
	border: 1px solid gray;
	border-radius: 5px;
	text-align: center;
	padding: auto;
	background-color: white;
}

</style>
<body class="pt-5"> 
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	<main class="pt-5">
		<section class="main">
			<div class="seatfream pt-5">
				<input class="Screen" type="text" value="Screen" readonly="readonly"><br>
				<c:forEach var="list" items="${seatlists }" >
					<input class="seat" type="button" onclick="seatinfo(this.value)" id="${list.seatrow }${list.seatcol }" value="${list.seatrow }${list.seatcol }">
					<c:if test="${(list.seatcol eq 4) || (list.seatcol eq 10)}">
						&nbsp;&nbsp;&nbsp;
					</c:if>
					<c:if test="${list.seatcol eq 14}">
						<br>
					</c:if>
				</c:forEach>
				
				<c:forEach var="seatcnt" items="${seatcnt }">
					<c:if test="${seatcnt.key eq 'scnt' }">
						<label class="seat">전체 좌석 : ${seatcnt.value }</label>
					</c:if>
					<c:if test="${seatcnt.key eq 's_leftcnt' }">
						<label class="seat">남은 좌석 : ${seatcnt.value }</label>
					</c:if>
				</c:forEach>
				<div class="personnel">
					<input class="personnel" type="button" value="-" onclick="person_value(document.getElementById('person'), '-')">
					<input class="personnel" type="number" id="person" min="1" max="5" value="1" onchange="person_add(this, '')" readonly="readonly">
					<input class="personnel" type="button" value="+" onclick="person_value(document.getElementById('person'), '+')">
				</div>
			</div>
		</section>
	</main>
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
</html>