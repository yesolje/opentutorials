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
					<div id="searchsec">
						<form>
							<select>
								<option>전체검색</option>
								<option>제목</option>
								<option>내용</option>
								<option>작성자</option>
							</select>
							<input type="text">
							<input type="submit" id="searchsub" value="검색">
						</form>
					</div>
					<div id="boardsec">
<!-- 코드 자동생성 시작 ----------------------------------------------------------------------------------------------------------------------->
						<table id="board-table-content">
							<tr>
								<th id="number">번호</th>
								<th id="title">제목</th>
								<th id="writer">글쓴이</th>
								<th id="ontime">작성일시</th>
								<th id="look">조회</th>
							</tr>
							<c:forEach var="board" items="${listboard}" varStatus="status">
								<tr>
									<td>${board.num}</td>
									<td class="linkto"><a href="/opentutorials/board/${board.num}">${board.title}</a></td> <!--  이렇게 하면 맨 유알엘 맨 마지막에 숫자가 계속 바뀜. 그 ㅜ숫자는 해당 게시글에 해당하는 번호. -->
									<td>${board.writer}</td>
									<td>${board.writedate}</td>
									<td>${board.look}</td>
								</tr>
							</c:forEach>
						</table>
<!-- 코드 자동생성 종료 ----------------------------------------------------------------------------------------------------------------------->
					</div>
					<div id="writesec">
						<a href="/opentutorials/board/writeTab"><span class="writesecbutton" >글쓰기</span></a>
					</div>
					<div id="listsec">
<!-- 코드 자동생성 시작 ----------------------------------------------------------------------------------------------------------------------->						
						<table id="board-page">
							<tr>
								<td>◀</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>▶</td>
							</tr>
						</table>
					</div>
<!-- 코드 자동생성 종료 ----------------------------------------------------------------------------------------------------------------------->					
				</article>
			</div>
			<div class="section"></div>
	</div>
	<!--현재는 controller 단에서 제어중
	<script>
		var loginUserId = "${loginUser.id}";
		checkLoginUser(loginUserId);
	</script>
	-->
	<script>
		var boardCriteria={
			totalPost : ${boardCriteria.totalPost},
			postPerPage : ${boardCriteria.postPerPage},
			totalPage : ${boardCriteria.totalPage},
			currentPage : ${boardCriteria.currentPage},
			pagePerBlock : ${boardCriteria.pagePerBlock},
			currentBlock : ${boardCriteria.currentBlock}
			}
		createBoardPage(boardCriteria);
		getBoardsByPageNum(1);
	</script>
</body>
</html>