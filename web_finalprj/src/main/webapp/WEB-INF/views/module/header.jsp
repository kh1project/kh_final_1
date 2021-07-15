<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.navbar .container { display:flex; }
.navbar .container a { color:#fff; font-size:1.2rem; letter-spacing:0.1rem;}
.navbar .container img { height:50px; padding:0.5rem 0; cursor:pointer }
body { padding-top:66px !important; }
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
  	<a href="<%=request.getContextPath() %>/movie">영화</a>
  	<a href="" onclick="alert('추가구현예정')">영화관</a>
    <img src="<%=request.getContextPath() %>/resources/images/common/logo.png" class="d-inline-block align-top" alt="SEENEMA 로고" onclick="location.href='<%=request.getContextPath() %>/index';">
    <a href="<%=request.getContextPath() %>/reserve?location=${branchDTO.location }">예매</a>
    <a href="<%=request.getContextPath() %>/review">리뷰</a>
  </div>
</nav>
&nbsp;  
  	<div class="container" style="font-size:1.2rem;">
			<ul class="nav justify-content-end">
			
		<%
			if(session.getAttribute("account") != null) {
		%>
					<li class="nav-item">
						<%
							if(getServletInfo().equals("mypage")) {
						%>
								<a class="nav-link active" href="<%=request.getContextPath() %>/account/mypage" style="color: #4C4C4C">마이페이지</a>
						<%		
							} else {
						%>
								<a class="nav-link" href="<%=request.getContextPath() %>/account/mypage" style="color: #4C4C4C">마이페이지</a>
						<%
							}
						%>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<%=request.getContextPath() %>/account/logout">로그아웃</a>
					</li>
				</ul>
		<% } else { %>
				<ul class="nav justify-content-end">
					<li class="nav-item">
						<a class="nav-link" href="<%=request.getContextPath() %>/account/login" style="color: #4C4C4C">로그인</a>
					</li>				
					<li class="nav-item">
						<a class="nav-link" href="<%=request.getContextPath() %>/account/join" style="color: #4C4C4C">회원가입</a>
					</li>
				</ul>
		<% } %>
  </div>