<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Opentutorials.org</title>
	<link href="/resources/css/style_opentutorials.css" rel="stylesheet">	<!-- 절대경로 : 스타일 -->
	<script src="/resources/js/myscript.js"></script>							<!-- 절대경로 : 자바스크립트 -->
	<script src="/resources/js/jquery-3.5.1.min.js"></script>				<!-- 절대경로 : 제이쿼리 -->
</head>
<body>
	<header>
		<div id="left_nav">
			<table>
				<tr>
					<td><a href="https://opentutorials.org/"><span>Open</span>tutorials.org</a></td>
				</tr>
			</table>
		<p id="title">자유게시판</p>
		<p>&nbsp;</p>
	</header>
	<div id="mainbody2">
			<div class="section"></div>
			<div class="section">
				<article>
					<p id="title1">게시글 작성</p>
						<div id="boardwritesec">
							<table>
								<tr>
									<td class="tableclass1">제목</td>
									<td class="tableclass2"><input id="board-title" type="text" name="title" class="typehere1"></td>
								</tr>
								<tr>
									<td class="tableclass1">닉네임</td>
									<td class="tableclass2"><input id="name" type="text" name="nickname"class="typehere"></td>
								</tr>
								<tr>
									<td class="tableclass1">비밀번호</td>
									<td class="tableclass2"><input id="passwd" type="password" name="password" class="typehere"><span>※ 쉬운 비밀번호로 설정 시 타인의 수정, 삭제가 쉽습니다.</span></td>
								</tr>
								<tr>
									<td class="tableclass1">파일 첨부</td>
									<td><input type="file" name="fileupload"></td>
								</tr>
								<tr id="lasttr">
									<td colspan="2"><textarea id="contents" name="contents" placeholder="※ 음란물, 차별, 비하, 혐오 및 초상권, 저작권 침해 게시물은 민, 형사상의 책임을 질 수 있습니다. "></textarea></td>
								</tr>
							</table>	
						</div>
						<div id="writesec">
								<a href="/opentutorials/board"><span class="writesecbutton">목록으로 돌아가기</span></a>
								<span><input id ="writesecbuttonwidth" class="writesecbutton" value="등록" onclick="createBoard();"></span>
						</div>
				</article>
			</div>
			<div class="section"></div>
	</div>
</body>
</html>