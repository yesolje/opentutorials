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
					<td><a href="/opentutorials/main"><span>Open</span>tutorials.org</a></td>
				</tr>
			</table>
		<p id="title">자유게시판</p>
		<p>&nbsp;</p>
	</header>
	<div id="mainbody2">
			<div class="section"></div>
			<div class="section">
				<article>
					<p id="title1">게시글 보기</p>
					<form action="semitest3_opentutorials_login_success.html">
						<div id="boardwritesec">
							<table>
								<tr>
									<td class="tableclass1">제목</td>
									<td class="tableclass2"><input id="board-title" type="text" name="title" class="typehere1" value="${board.title}"></td>
								</tr>
								<tr>
									<td class="tableclass1">닉네임</td>
									<td class="tableclass2"><input id="name" type="text" name="nickname" class="typehere" value="${board.writer}"></td>
								</tr>
								<tr>
									<td class="tableclass1">비밀번호</td>
									<td class="tableclass2"><input id="passwd" type="text" name="password" class="typehere" value="${board.password}"></td>
								</tr>
								<tr>
									<td class="tableclass1">파일 첨부</td>
									<td>없음</td>
								</tr>
								<tr id="lasttr">
									<td colspan="2">
										<div id="usercontents">
											<textarea id="contents" name="contents" placeholder="※ 음란물, 차별, 비하, 혐오 및 초상권, 저작권 침해 게시물은 민, 형사상의 책임을 질 수 있습니다. ">${board.content}</textarea>
										</div>
									</td>
								</tr>
							</table>	
						</div>
						<div id="writesec">
								<a href="/opentutorials/board"><span class="writesecbutton">목록으로 돌아가기</span></a>
								<span class="writesecbutton" onclick="modifyBoardConfirm(${board.num});">저장</span>
						</div>
					</form>
				</article>
			</div>
			<div class="section"></div>
	</div>
</body>
</html>