<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jquery/js/jquery-3.6.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
<title>SEENEMA의 가족이 되어주세요!</title>
</head>
<body>
	<%@ include file="../module/header.jsp" %>
	<h1>join.jsp 입니다.</h1>
	<h3>회원가입 페이지 입니다.</h3>
	<c:url var="join" value="/account/join" />
	<form name="account_form" action="${join }" method="post">
		<div>
			<label for="id_name">* 이름</label>
			<input id="id_name" type="text" name="name" required>
		</div>
		<div>
			<label for="id_nickname">* 닉네임</label>
			<input id="id_nickname" type="text" name="nickname" required>
			<label id="nickname_check_res"></label>
		</div>
		<div>
			<label for="id_email">* 이메일</label>
			<input id="id_email" type="email" name="email" required>
			<button type="button">중복확인</button>
		</div>
		<div>
			<label for="id_phone">* 연락처</label>
			<input id="id_phone" type="tel" name="phone" required>
		</div>
		<div>
			<label for="id_password">* 비밀번호</label>
			<input id="id_password" type="password" name="password" required>
		</div>
		<div>
			<label>* 성별</label>
			<input id="id_gender_m" type="radio" name="gender" value="m" checked><label for="id_gender_m"> 남</label>
			<input id="id_gender_w" type="radio" name="gender" value="w"><label for="id_gender_w"> 여</label>
		</div>
		<div>
			<label for="id_age">* 나이</label>
			<input id="id_age" type="number" name="age" min="1" max="199" step="1" required>
		</div>
		<div>
			<button type="button" onclick="send();">가입</button>
			<button type="button" onclick="history.back();">취소</button>
		</div>
	</form>
	<%@ include file="../module/footer.jsp" %>
</body>
</html>