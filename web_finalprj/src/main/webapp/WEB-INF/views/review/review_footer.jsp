<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</div>
	<jsp:include page="../module/footer.jsp"></jsp:include>
</body>
<c:url var="addstep1" value="/reviewajax/addstep1" />
<c:url var="addstep2" value="/reviewajax/addstep2" />
<script>
$(document).ready(function(){
	$('#post1').addClass("selected");

	$('.post.selected textarea').on('keyup', function() {
	    $('.post.selected .pTextCnt').html("("+$(this).val().length+" / 100)");
	    if($(this).val().length > 100) {
		    $(this).val($(this).val().substring(0, 100));
	    	$('.post.selected .pTextCnt').html("(100 / 100)");
		}
	});
});

var movienum;

function selectmovie(num) {
	movienum = num;
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
		url: "${addstep1}",
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
		$(".selected .selectImg").attr("id", num);
	}
}

var postClass = document.getElementsByClassName("post");
var postid = 2;
function addPost(){ 
	if(postClass) {
		$("#btn_addpost").before("<div id='post" + postid + "' class='col p-3 post' onclick='selectPost(" + postid + ")'><img class='selectImg' src='' alt='이미지 없음'><textarea placeholder='내용을 작성해 주세요.'></textarea><div class='pTextCnt'>(0 / 100)</div>");
	}
	postid++;
} 

function add2send(num) {
	var param = [];
	for(i = 0; i < postClass.length; i++) {
		var postnum = $("#post" + (i + 1))
		var data = {
			postimg : postnum.children("img").attr("src"),
			posttext : postnum.children("textarea").val()
		};
		param.push(data);
	};
	
	var jsonData = JSON.stringify(param);
	jQuery.ajaxSettings.traditional = true;
	
	$.ajax({
        url : '${addstep2}',
        type: 'POST',
        traditional: true, //배열 및 리스트로 값을 넘기기 위해서는 꼭 선언되어야 한다고 함.
        dataType:'json',
        data: {"jsonData" : jsonData},
        success: function(mergePost) {
        	for(i = 0; i < mergePost.length; i++) {
            	console.log(mergePost[i]);
        	}
        }
    });
}

function addReview() {
	//값이 안 들어온거 있는지 먼저 체크하고
	
	//ajax로 포스트마다 저장한 리스트 값 가져오고
	add2send();
	//submit으로 add로 이동
	document.step2form.submit();
}
</script>
</html>