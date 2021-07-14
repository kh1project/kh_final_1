function modalShow(size, index){
	let modal = document.querySelector("#crs > .crs-bg");
	let modalImg = document.querySelector(".crs-imagebox > img");
	let imgs = document.querySelectorAll(".image-box img");
	
	modal.style = "display:block";
	modalImg.src = imgs[index-1].src;
	
}

function modalHide(){
	let modal = document.querySelector("#crs > .crs-bg");
	modal.style = "display:none";
}