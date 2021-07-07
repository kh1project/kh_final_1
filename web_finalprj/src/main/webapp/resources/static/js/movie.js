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
				document.querySelector("#unlike-"+mid).innerHTML = "<span class=\"inner-btn liked\" onmouseover=\"mouseoverLike("+mid+")\" onmouseout=\"mouseoutLike("+mid+")\" onclick=\"iHateIt("+mid+")\">♥"+data.gcnt+"</span>";
				document.querySelector("#unlike-"+mid).id = "like-"+mid;
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
				document.querySelector("#like-"+mid).innerHTML = "<span class=\"inner-btn unlike\" onmouseover=\"mouseoverUnlike("+mid+")\" onmouseout=\"mouseoutUnlike("+mid+")\" onclick=\"iLikeIt("+mid+")\">♡"+data.gcnt+"</span>";
				document.querySelector("#like-"+mid).id = "unlike-"+mid;
			},
			error: function(){
				console.log("unlike 실패");
			}
		})
	}
	
	/* <span class="inner-btn unlike" id="unlike-${item.getId() }"
		onmouseover="mouseoverUnlike(${item.getId() })" 
		onmouseout="mouseoutUnlike(${item.getId() })" 
		onclick="iLikeIt(${item.getId() })">
			${item.gcnt } 
		</span> */ 