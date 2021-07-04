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
</head>
<style type="text/css">
main{
	width: 100%; height: 710px;
	margin: auto auto;
}

#seats{
	width: 500px;
	justify-content: center;
	align-items: center;
	margin: auto auto;
}

section.main {
	width: 800px; height: auto;
	margin: auto auto;
	background: #353535;
	justify-content: center;
	align-items: center;
}

div.seatfream {
	width: auto; height: auto;
	justify-content: center;
	text-align: center;
}

input.seatinfo-checkbox { display: none; }

label, .no-seat, input.personnel, input.personnel-type {
	line-height: 20px; padding: auto;
	font-size: 8pt;
	text-align: center;
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-webkit-user-select: none;
	-khtml-user-select: none;
}

label.screen{
	width: 500px;
	margin-bottom : 40px;
	background-color: white;
}

div.personner {
	width: auto; height: auto;
	justify-content: center;
	align-items: center;
	padding-top: 20px;
	padding-bottom: 30px;
}

div.seatcnt{
	height: auto;
}

label.seat-all {
	width: 100px; margin: 10px; 
}

input.personnel, input.personnel-type{
	width: 30px; height: 30px;
	margin: 10px 0px;
}
input.personnel-type { width: 50px; }

input[name="seat"] + label {
	display: inline-block;
	background-color: white;
	width: 30px; height: 25px;
	border: 2px solid #bcbcbc;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px;
	cursor: pointer;
}

label.no-seat{
	display: inline-block;
	width: 30px; height: 25px;
	background-color: #BDBDBD;
	border: 1px solid #bcbcbc;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px;
	cursor: pointer;
	color: white;
	font-weight: bold;
}

input[name="seat"]:checked + label {
	background-color: #8FAE48;
	color: white;
	font-weight: bold;
}

div.peoples-number {
	width: auto; height: auto;
}

input.bnt {
	width: 40px; height: 40px;
}

</style>
<body class="pt-5"> 
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	<main class="pt-5">
		<section class="main">
			<div class="seatfream pt-5">
				<label class="screen">Screen</label><br>
				<div id="seats">
					<c:forEach var="list" items="${seatlists }" >
						<c:choose>
							<c:when test="${fn: containsIgnoreCase(list.reserved, 'y') }">
									<label class="no-seat" id="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${(list.seatcol eq 4) || (list.seatcol eq 10)}">
										<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
										<label id="${list.seatrow }${list.seatcol }" style="margin-right : 10px;" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
									</c:when>
									<c:when test="${list.seatcol eq 14}">
										<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
										<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label><br>
									</c:when>
									<c:otherwise>
										<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
										<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				
				<div class="person">
						<c:set var="rating" value="${rating }" />
							<div class="peoples-number">
								<input class="personnel-type" type="text" id="adult" value="성인">
								<input class="personnel bnt" type="button" value="-" onclick="person_value(document.getElementById('person1'), '-')">
								<input class="personnel peple" type="number" id="person1" min="1" max="5" value="1" onchange="person_add(this, '')" readonly="readonly">
								<input class="personnel bnt" type="button" value="+" onclick="person_value(document.getElementById('person1'), '+')">
							</div>
						<c:if test="${rating < 19}">
							<div>
								<input class="personnel-type" type="text" id="Teenager" value="청소년">
								<input class="personnel bnt" type="button" value="-" onclick="person_value(document.getElementById('person2'), '-')">
								<input class="personnel peple" type="number" id="person2" min="1" max="5" value="1" onchange="person_add(this, '')" readonly="readonly">
								<input class="personnel bnt" type="button" value="+" onclick="person_value(document.getElementById('person2'), '+')">
							</div>
						</c:if>
					</div>
			</div>
		</section>
	</main>
	<footer>
		<%@ include file="../module/footer.jsp" %>
	</footer>
</body>
<script type="text/javascript">
	$(document).ready(function() {
	    $(":checkbox").change(function() {
	    	var cnt = 0;
	    	var test2 = 0;
	    	var test1 = $("#person1").val();
	    	if($("#person2").val() != null){
	    		test2 = $("#person2").val();
	    	}
	    	cnt = Number(test1) + Number(test2);
	    	console.log(cnt);
	    	
	        if( cnt==$(":checkbox:checked").length ) {
	            $(":checkbox:not(:checked)").attr("disabled", "disabled");
	        }
	        else {
	            $(":checkbox").removeAttr("disabled");
	        }
	    });
	    
	    $("#person1").change(function(){
		    $(":checkbox").removeAttr("checked");
		    $(":checkbox").removeAttr("disabled");
		});
		
	    $("#person2").change(function(){
		    $(":checkbox").removeAttr("checked");
		    $(":checkbox").removeAttr("disabled");
		});
	    
	});
	
	function person_value(person, updown){
		if(person.value >= $("input:checked[type='checkbox']").length){
			if(person.value > 0 && person.value < 6){
				switch(updown){
			        case"+":
			        	if(person.value < 5 && person.value > 0){
			        		person.value = parseInt(person.value) + 1;
			        		$("input[type=checkbox]").prop("checked",false);
			        		$(":checkbox").removeAttr("checked");
			        		$(":checkbox").removeAttr("disabled");
			        	} else if(person.value == 5){
			        		alert('최대 5명 선택 가능합니다.');
			        	}
			    		break;
			        case"-":
			        	if(person.value < 6 && person.value > 1){
			        		person.value = parseInt(person.value) - 1;
			        		$("input[type=checkbox]").prop("checked",false);
			        		$(":checkbox").removeAttr("checked");
			        		$(":checkbox").removeAttr("disabled");
			        	} else if(person.value == 1){
			        		alert('최소 1명 선택 가능합니다.');
			        	}
			            break;
			    }
				
			}
		}
	}
</script>
</html>
