<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
	<jsp:include page="../module/footer.jsp"></jsp:include>
</body>
<c:url var="addstep2" value="/reviewajax/addstep2" />
<script>
function selectmovie(num) {
	var ckbg = document.getElementById("checkbg" + num);
	var anotherckbg = document.getElementsByClassName("checkbg");
	var ckradio = document.getElementById("wm" + num);
	if(ckradio.checked) {
		for(i = 0; i < anotherckbg.length; i++) {
			anotherckbg[i].style.display = "none";			
		}
		ckbg.style.display = "block";
	}
	
	$.ajax({
		url: "${addstep2}",
		type: "post",
		datatype: "json",
		data: {
			selectmovie: num
		},
		success: function(smovieimgs) {
			if(smovieimgs.length > 0) {
				i = 1;
				for(var ele in smovieimgs) {
					$("#add-imagelist").append("<img id='smovieimg" + i + "' class='col selectImg' src='/seenema/" + smovieimgs[ele].path + smovieimgs[ele].name + "' onclick='selectImg(" + i + ")'>");
					i++;
				}
				
				document.getElementById("add-step1").style.display = "none";
				document.getElementById("add-step2").style.display = "block";
			} else {
				alert("영화 이미지가 없습니다.");
			}
		}
	});
}

$(document).ready(function(){
	$('#post1').addClass("selected");
});

var thispost;
function selectPost(num) {
	$("#post" + num).addClass("selected");
	$("#post" + num).siblings().removeClass("selected");
}

function selectImg(num) {
	if(document.getElementsByClassName("selectImg")) {
		$(".selected .selectImg").remove();
		$("#smovieimg" + num).clone().prependTo(".post.selected").last(); //last post id를 가져와야 함.
		$(".selected .selectImg").removeAttr("onclick");
	}
}

var postid = 2;
function addPost(){ 
	if(document.getElementsByClassName("post")) {
		$("#btn_addpost").before("<div id='post" + postid + "' class='col p-3 post' onclick='selectPost(" + postid + ")'><img class='selectImg' src='' alt='이미지 없음'><textarea placeholder='내용을 작성해 주세요.'></textarea>");
	}
	postid++;
} 
</script>
</html>