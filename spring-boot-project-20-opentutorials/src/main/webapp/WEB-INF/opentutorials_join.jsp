<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Opentutorials.org</title>
	<link href="../resources/css/style_opentutorials.css" rel="stylesheet">
	<script src="/resources/js/myscript.js"></script>
	<script src="/resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<header>
		<div id="left_nav">
			<table>
				<tr>
					<td><a href="/opentutorials/main"><span>Open</span>tutorials.org</a></td>
				</tr>
			</table>
		<p id="title">회원가입</p>
		<p>&nbsp;</p>
	</header>
	<div class="main">
		<div class="loginbox">
			<div id="box1">
				<strong>회원가입</strong>
			</div>
			<div id="box2">
				<form id="target">
					<label class="box2text">닉네임</label>
					<input type="text" name="nickname" class="type-here" id="nickname">
					<div class="alert" id="alertname"></div>
					<br>
					<label class="box2text">이메일</label>
					<input type="text" name="email" class="type-here" id="email">
					<div class="alert" id="alertemail"></div>
					<br>
					<label class="box2text">비밀번호</label>
					<input type="password" name="pw" class="type-here" id="pw">
					<div class="alert" id="alertpassword"></div>
					<br>
					<label class="box2text">비밀번호 확인</label>
					<input type="text" name="pwagin" class="type-here" id="pwagain">
					<div class="alert" id="alertpasswordagain"></div>
					<p><input input type ="button" name="submit" value="가입하기" id="loginsub" onclick="createMember();"></p>
				<form>
			</div>
			<div id="box3">
				<p id="facebookloginbutton">
					<img src="../resources/img/facebook.png" style="width: 10px">
					<span>페이스북으로 로그인하기</span>
				</p>
			</div>
			<div id="box4">
			<p>비밀번호 찾기 | <a href="/opentutorials/login">로그인</a><p>
			</div>
		</div>
	</div>

</body>
</html>