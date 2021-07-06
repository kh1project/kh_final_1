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
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reserve/seat.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
<body class="pt-5" ondragstart="return false"> 
	<header>
		<%@ include file="../module/header.jsp" %>
	</header>
	<main class="pt-5">
		<section class="main">
			<c:url var="seat" value="/reserve/reservecheck" />
			<form id="seat-form" action="${seat }" method="post">
				<div class="seatfream pt-5">
					<label class="screen">Screen</label><br>
					<div class="seats">
						<c:forEach var="list" items="${seatlists }" >
							<c:forEach var="seatcnt" items="${seatcnt }">
								<c:if test="${seatcnt.key eq 'scnt' }">
									<c:set var="seatamount" value="${seatcnt.value }" />
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${fn: containsIgnoreCase(list.reserved, 'y') }">
										<label class="no-seat" id="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${seatamount%2 == 0 }" >
											<c:choose>
												<c:when test="${(list.seatcol eq 4) || (list.seatcol eq 10)}">
													<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" style="margin-right : 10px;" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:when>
												<c:when test="${list.seatcol eq 1}">
													<br><input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:when>
												<c:otherwise>
													<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${(list.seatcol eq 5) || (list.seatcol eq 10)}">
													<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" style="margin-right : 10px;" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:when>
												<c:when test="${list.seatcol eq 1}">
													<br><input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:when>
												<c:otherwise>
													<input class="seatinfo-checkbox" type="checkbox" id="${list.seatrow }${list.seatcol }" name="seat" value="${list.seatrow }${list.seatcol }">
													<label id="${list.seatrow }${list.seatcol }" for="${list.seatrow }${list.seatcol }">${list.seatrow }${list.seatcol }</label>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					
					<div class="person">
						<c:forEach var="movie" items="${moviedata }">
							<c:set var="rating" value="${list.rating }" />
						</c:forEach>
							<div class="peoples-number">
								<input class="personnel-type" type="text" id="Adult" value="성인">
								<input class="personnel" type="button" value="-" onclick="person_value(document.getElementById('person1'), '-')">
								<input class="personnel" type="text" name= "adult"id="person1" value="0" onchange="person_add(this, '')">
								<input class="personnel" type="button" value="+" onclick="person_value(document.getElementById('person1'), '+')">
							</div>
						<c:if test="${rating < 19}">
							<div class="peoples-number">
								<input class="personnel-type" type="text" id="Teenager" value="청소년">
								<input class="personnel" type="button" value="-" onclick="person_value(document.getElementById('person2'), '-')">
								<input class="personnel-value" type="text" name="teenager" id="person2" value="0" onchange="person_add(this, '')">
								<input class="personnel" type="button" value="+" onclick="person_value(document.getElementById('person2'), '+')">
							</div>
						</c:if>
						<div class="payment">
							<input class="payment" type="button" value="결제하기 >" onclick="send('seat-form');">
						</div>
						<div class="seatexample">
							<span class="seat selected"></span><p class="selected">선택 불가능한 좌석</p>
							<span class="seat choose"></span><p class="selected">선택 가능한 좌석</p>
							<span class="seat select"></span><p class="selected">선택된 좌석</p>
						</div>
					</div>
				</div>
			</form>
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
			if(person.value >= 0 && person.value < 6){
				switch(updown){
			        case"+":
			        	if(person.value < 5 && person.value >= 0){
			        		person.value = parseInt(person.value) + 1;
			        		$("input[type=checkbox]").prop("checked",false);
			        		$(":checkbox").removeAttr("checked");
			        		$(":checkbox").removeAttr("disabled");
			        	} else if(person.value == 5){
			        		alert('최대 5명 선택 가능합니다.');
			        	}
			    		break;
			        case"-":
			        	if(person.value < 6 && person.value > 0){
			        		person.value = parseInt(person.value) - 1;
			        		$("input[type=checkbox]").prop("checked",false);
			        		$(":checkbox").removeAttr("checked");
			        		$(":checkbox").removeAttr("disabled");
			        	} else if(person.value == 0){
			        		alert('최소 1명이상 예매해야합니다.');
			        	}
			            break;
			    }
				
			}
		}
	}
	
	function send(form_id) {
		var f = document.getElementById(form_id);
		f.submit();
	}
</script>
</html>
