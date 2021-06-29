<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SEENEMA</title>
   
    <style>
        *{
          margin: 0pt;  
        }

        header{
            
            height: 200px;
            
        }

        header, #container, footer{
            display: block;
            position: relative;
            max-width: 1100px;
            background-color: rgb(165, 165, 152);
            margin: 0 auto 0 auto;
        }

        .movies-container{
          border: 1px solid red;
         
        }
    
            .movies{
                display: inline-block;
                border: 1px solid black;
                width: 230px;
                height: 450px;
                margin-left: 60px;
                margin-bottom: 60px;
            }

                .poster{

                }

                    .poster img{
                        width: 230px;
                        height: 330px;
                    }
    
                .btn-util{
                    display: block;
                    
                }
    
                    .inner-btn{
                        border: 1px solid blue;
                        width: 80px;
                        text-align: center;
                        display: inline-block;
                        margin: 0px auto 0px auto;
                        cursor: pointer;
                        
                        
                    }
        .logo{
            display: inline-block;
            position: absolute;
            left: 350px;
            
            
        }

        .view-path{
            position: sticky;
            top: 230px;
        }
    </style>
    <script>
        window.onload = function(){
            const likeBtn = document.querySelector("#like-btn");
            const detailBtn = document.querySelector("#detail-btn");
            const btns = document.querySelectorAll(".inner-btn");
            
            for(var btn of btns){
                btn.onmouseover = function(){
                    btn.style.backgroundColor = "lightgray";
                }
    
                btn.onmouseout = function(){
                    btn.style.backgroundColor = "white";
                }
            }


            likeBtn.onclick = function(){
                console.log("좋아여");
            }
            
            detailBtn.onclick = function(){
                console.log("상세보기")
            }
        
            function init(){
                console.log("init");
            }
            
            init();
        }
    </script>
</head>
<body>
    <!-- ----------------<header>---------------- -->
    <header>
        <div class="logo"><h1><a href="/index.html"><img src="resources/imgs/임시로고.png" alt="SEENEMA.logo"></a></h1></div>
        <div>멤버십,고객센터,로그인,회원가입 등</div>
        <div>영화,예매,극장,이벤트 등 메인메뉴</div>
        <nav class="view-path">홈>영화>..</nav> 
    </header>
    <!-- ----------------</header>---------------- -->
    <!-- ----------------<body>---------------- -->
	<container id="container">
	    <div class="movies-container">
	        <div class="movies">
	            <div class="poster"><a href=""><img src="resources/imgs/그 여름, 가장 차가웠던 (少女佳禾, Summer Is the Coldest Season)/poster/movie_image (1).jpg" alt="Summer Is the Coldest Season"></a></div>
	            <div class="title">그 여름 가장 차가웠던</div>
	            <div class="rate-date">예매율, 개봉일</div>
	            <div class="btn-util">
	                <span class="inner-btn" id="like-btn">
	                    좋아여
	                </span>
	                <span class="inner-btn" id="detail-btn">
	                    예매
	                </span>
	            </div>
	        </div>
	        <div class="movies">
	            <div class="poster"><a href=""><img src="resources/imgs/루카 (Luca)/poster/movie_image.jpg" alt="Summer Is the Coldest Season"></a></div>
	            <div class="title">그 여름 가장 차가웠던</div>
	            <div class="rate-date">예매율, 개봉일</div>
	            <div class="btn-util">
	                <span class="inner-btn" id="like-btn">
	                    좋아여
	                </span>
	                <span class="inner-btn" id="detail-btn">
	                    상세보기
	                </span>
	            </div>
	        </div>
	        <div class="movies">
	            <div class="poster"><a href=""><img src="resources/imgs/킬러의 보디가드 (Hitman's Wife's Bodyguard)/poster/movie_image (1).jpg" alt="Summer Is the Coldest Season"></a></div>
	            <div class="title">그 여름 가장 차가웠던</div>
	            <div class="rate-date">예매율, 개봉일</div>
	            <div class="btn-util">
	                <span class="inner-btn" id="like-btn">
	                    좋아여
	                </span>
	                <span class="inner-btn" id="detail-btn">
	                    상세보기
	                </span>
	            </div>
	        </div>
	        <div class="movies">
	            <div class="poster"><a href=""><img src="resources/imgs/그 여름, 가장 차가웠던 (少女佳禾, Summer Is the Coldest Season)/poster/movie_image.jpg" alt="Summer Is the Coldest Season"></a></div>
	            <div class="title">그 여름 가장 차가웠던</div>
	            <div class="rate-date">예매율, 개봉일</div>
	            <div class="btn-util">
	                <span class="inner-btn" id="like-btn">
	                    좋아여
	                </span>
	                <span class="inner-btn" id="detail-btn">
	                    상세보기
	                </span>
	            </div>
	        </div>
	        <div class="movies">
	            <div class="poster"><a href=""><img src="resources/imgs/더 파더 (The Father)/poster/movie_image.jpg" alt="Summer Is the Coldest Season"></a></div>
	            <div class="title">그 여름 가장 차가웠던</div>
	            <div class="rate-date">예매율, 개봉일</div>
	            <div class="btn-util">
	                <span class="inner-btn" id="like-btn">
	                    좋아여
	                </span>
	                <span class="inner-btn" id="detail-btn">
	                    상세보기
	                </span>
	            </div>
	        </div>
	    </div>
	</container>
    <!-- ----------------</body>---------------- -->
    <!-- ----------------<footer>---------------- -->
        <footer>
    
        </footer>
    <!-- ----------------</footer>---------------- -->
</body>
</html>


