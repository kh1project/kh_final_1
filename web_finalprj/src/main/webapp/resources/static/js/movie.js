/* $.ajax({
	url: , 
	type: ,
	datatype: "json",
	data: {},
	success: function(data){},
	error: function(){}
}) */
	
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
				document.querySelector("#unlike-"+mid).innerHTML = "<span class=\"btn btn-outline-dark\" onclick=\"iHateIt("+mid+")\">♥ "+data+"</span>";
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
				document.querySelector("#like-"+mid).innerHTML = "<span class=\"btn btn-outline-dark\" onclick=\"iLikeIt("+mid+")\">♡ "+data+"</span>";
				document.querySelector("#like-"+mid).id = "unlike-"+mid;
			},
			error: function(){
				console.log("unlike 실패");
			}
		})
	}
	
	window.onload = function(){
		let filter = document.querySelector(".custom-select")
		filter.onchange = function(){
			window.location = "/movie?sort="+filter.value;
		}
	}
	
	/* <span class="inner-btn unlike" id="unlike-${item.getId() }"
		onmouseover="mouseoverUnlike(${item.getId() })" 
		onmouseout="mouseoutUnlike(${item.getId() })" 
		onclick="iLikeIt(${item.getId() })">
			${item.gcnt } 
		</span> */ 