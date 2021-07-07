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
		<p id="title">로그인</p>
		<p>&nbsp;</p>
	</header>
	<div class="main">
		<div class="loginbox">
			<div id="box1">
				<strong>로그인</strong>
				<span><input type="checkbox" name="checkhere">로그인 상태 유지</span>
			</div>
			<div id="box2">
					<label class="box2text">아이디(이메일)</label>
					<input type="text" name="id-here" class="type-here" id="id-here">
					<label class="box2text">비밀번호</label>
					<input type="password" name="pw-here" class="type-here" id="pw-here">
					<p><input type ="button" name="submit" value="로그인" id="loginsub" onclick="login()"></p>
			</div>
			<div id="box3">
				<p id="facebookloginbutton">
					<img src="../resources/img/facebook.png" style="width: 10px">
					<span>페이스북으로 로그인하기</span>
				</p>
			</div>
			<div id="box4">
			<p>비밀번호 찾기 | <a href="/opentutorials/join">회원가입</a><p>
			</div>
		</div>
	</div>

</body>
</html>