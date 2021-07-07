<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>생활코딩</title>
	<link href="../resources/css/style_opentutorials.css" rel="stylesheet">
	<script src="/resources/js/myscript.js"></script>
	<script src="/resources/js/jquery-3.5.1.min.js"></script>
<body>
	<header>
		<div id="left_nav">
			<table>
				<tr>
					<td><a href="https://opentutorials.org/"><span>Open</span>tutorials.org</a></td>
					<td onclick="openNav()"><img id="indexIcon" src="../resources/img/list.png" ><img id="indexIconActive" src="../resources/img/list_activate.png" >
					</td>
				</tr>
			</table>
			<div id="bignav">
				<p ><h3 style="color:black">코스 전체목록</h3></p>
				<div id="navlist">
					<table>
						<tr>
							<td>WEB</td>
							<td>DATABASE</td>
							<td>언어</td>
							<td>클라이언트</td>
							<td>서버</td>
						</tr>
						<tr>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
						</tr>
						<tr>
							<td>데이터 과학</td>
							<td>개발 도구</td>
							<td>프로젝트 관리</td>
							<td>기타</td>
						</tr>
						<tr>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
							<td>
								<li>contents</li>
								<li>contents</li>
								<li>contents</li>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div id="right_nav">
			<table>
				<tr>
					<%-- <c:set var="user" value="${loginUser}" /> --%>
					<c:choose>
						<c:when test="${loginUser != null}">
							<td>${loginUser.id}님, 환영합니다.</td>
							<td><span onclick="logout()">로그아웃</span></td>
						</c:when>
						<c:otherwise>
							<td>로그인해주세요.</td>
							<td><a href="/opentutorials/login">로그인</a></td>
						</c:otherwise>
					</c:choose>
					<td><a href="https://opentutorials.org/">후원</a></td>
					<td><a href="/opentutorials/board">게시판</a></td>
				</tr>
			</table>
		</div>
		<p id="title">생활코딩</p>
		<p id="small_title"><small>Coding Everybody</small></p>
		<div id="bottom_nav">
			<ul>
				<li class="NAV">WEB</li>
				<li class="NAV">DATABASE</li>
				<li class="NAV">언어</li>
				<li class="NAV">클라이언트</li>
				<li class="NAV">서버</li>
				<li class="NAV">데이터 과학</li>
				<li class="NAV">개발도구</li>
				<li class="NAV">프로젝트 관리</li>
				<li class="NAV">기타</li>
			</ul>
		</div>
	</header>
	<div id="mainbody">
		<div id="breadcrumb">
			<div class=littlesection></div>
			<div class=littlesection><p>생활코딩</p></div>
			<div class=littlesection></div>
		</div>
		<div id="contents">
			<div class="section"></div>
			<div class="section">
				<article>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5641.png" width="150">
					</p>
					<p style="text-align: center">hello world</p>
					<p>&nbsp;</p>
					<p>생활코딩의 세계에 오신 것을 환영합니다. 생활코딩은 <strong>일반인들에게 프로그래밍을 알려주는 무료 온라인, 오프라인 수업입니다. </strong> 어떻게 공부할 것인가를 생각해보기 전에 왜 프로그래밍을 공부하는 이유에 대한 이유를 함께 생각해보면 좋을 것 같습니다. 아래 영상을 한번 보시죠.</p>
					<p>&nbsp;</p>
					<div class="movie">
					<iframe allowfullscreen frameborder="0" height="360" src="https://www.youtube.com/embed/1ttLx9MbrCI" width="640"></iframe>
					</div>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">온라인 강의 소개</h2>
					<p>입문자의 가장 큰 고충은 '무엇을 모르는지 모르는 상태'일 겁니다. 온라인에는 프로그래밍을 익히는 데 필요한 거의 모든 정보가 있지만, 이 지식들은 게시판이나 블로그 또는 커뮤니티에 포스팅 단위로 파편화되어 있습니다. 그래서 최소한 무엇을 검색해야 하는지를 아는 사람들을 위해서는 더 없이 좋은 공간이지만, '무엇을 모르는지 모르는 상태'의 입문자에게는 그림의 떡으로 남아 있습니다. 다시말해서 전문가를 더욱 전문가답게 만드는 혁신에 머물고 있는 것이죠.</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5636.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>생활코딩은 컴퓨터와 인터넷이 존재하는 시대의 공부방법은 어때야 하는가를 찾는 작업을 꾸준히 하고 있습니다. 정보기술이 발전하지 않았던, 낭만적인 시절에는 어떤 일을 하려고 하면 그것을 하기 위해서 필요한 거의 모든 것을 알고 있어야 했습니다. 검색할수도 없었고, 질문하기도 어려웠기 때문입니다. 한편 한번 배운 지식만으로도 평생을 살아 갈 수 있었습니다.  </p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5637.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>오늘날은 인터넷이 연결된 환경에서 일을 합니다. 언제든지 검색하고, 질문할 수 있습니다. 또 많은 일을 기계가 대신해줍니다. 이런 시대의 공부방법은 과거와 달라져야 한다고 생각합니다.  생활코딩이 지향하는 목표는 작은 교육입니다. 작은교육의 핵심은 '무엇을 모르는지 모르는 상태'에서 '무엇을 모르는지는 아는 상태'가 되는 것입니다. 무엇을 모르는지를 알면, 지금 당장 그 지식을 익히지는 않더라도, 그 지식이 정말 필요할 때 그 지식을 구하려 할 것입니다. 이 때 하는 공부는 이전과 같지 않을 것입니다.</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5642.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">수업 소개</h2>
					<p>생활코딩 주력 수업인 <a href="https://opentutorials.org/course/3083" target="_blank">WEBn</a>은 프로그래밍이 처음인 분들을 위해서 고안된 수업입니다. WEBn을 통해서 교양으로 코딩을 공부하려는 분들에게는 출구를, 직업으로 코딩을 공부하려는 분들에게는 입구를 제공해드리려고 노력하고 있습니다. 웹이라는 구체적인 사례를 통해서 코딩이 무엇인가 파악해보세요. 또 코딩을 통해서 웹을 만드는 방법을 공부해보세요. </p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>아래 수업은 생활코딩 수업들 간의 의존관계를 나타내고 있는 지도입니다. 이 지도를 통해서 심화과정을 스스로 탐구 할 수 있습니다. 각각의 수업에 방문해서 소개 영상부터 구경해보세요. </p>
					<div class="movie">
					<iframe frameborder="0" height="600" scrolling="no" src="https://seomal.org?i=WEB1" width="100%"></iframe>
					</div>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">생활코딩 Youtube 채널</h2>
					<p>생활코딩의 모든 동영상 강의는 Youtube를 통해서 서비스 되고 있습니다. Youtube 채널을 구독하시면 생활코딩의 새로운 동영상을 받아보실 수 있습니다.</p>
					<p><a href="http://www.youtube.com/user/egoing2">http://www.youtube.com/user/egoing2s</a></p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5644.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h3>질문</h3>
					<p>각각의 수업의 하단에는 댓글이 있습니다. 이 댓글을 통해서 질문을 받습니다. 댓글을 달면 운영자에게 이메일이 발송되기 때문에 질문은 모두 운영자에게 열람이 됩니다. 하지만 많은 양의 질문을 받기 때문에 운영자 입장에서는 큰 부담이 되는 것도 사실입니다. 운영자가 답장을 하지 않는 것은 운영자도 잘 모르는 문제이거나 지금은 답변하기 어려운 것일 수 있습니다. 꼭 운영자를 통해서 문제를 해결해야 하는 것은 아니기 때문에 우선은 검색이나 커뮤니티에 질문하는 것을 통해서 문제를 해결하셨으면 좋겠습니다. 물론 운영자에게 질문하시는 것을 주저하실 필요는 없습니다. 답변할 수 있는 것은 최대한 신속하게 도움을 드립니다. 그리고 질문은 최대한 상세하게 해주세요.</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5645.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">공동 공부</h2>
					<p>공동공부는 온라인의 편리한 접근성에 오프라인의 함께하는 느낌을 하이브리드한 공부방식입니다.공동공부를 통해서 덜 외롭게 공부할 수 있습니다. 다음 링크는 공동공부에 참여하는 방법입니다. <a href="https://www.youtube.com/watch?v=1YZSqRZ_1rg">https://www.youtube.com/watch?v=1YZSqRZ_1rg</a></p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5646.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">커뮤니티</h2>
					<h3>생활코딩 페이스북 그룹</h3>
					<p>생활코딩 페이스북 그룹은 프로그래밍을 하고 싶은 일반인과 일반인을 만나고 싶은 프로그래머들이 드물게 조우하는 커뮤니티 입니다.이곳에서 사람사는 잡담도 하고, 기술적인 질답도 하고, 서로의 입장도 바꿔보는 훈훈한 커뮤니티입니다. 그 지식을 기반으로 하는 사람들의 사회를 이해하는 것은 그 지식을 이해하는 것만큼 중요할 뿐 아니라, 지식을 넘어서 지혜를 구하는데 가장 좋은 방법입니다.</p>
					<p><a href="http://goo.gl/BjjSh">http://goo.gl/BjjSh</a></p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5647.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h3>생활코딩 페이스북 페이지</h3>
					<p>생활코딩 페이스북 페이지에서 좋아요를 누르시면 새로운 강의가 등록될 때 알려드립니다. 정보 기술과 관련한 다양한 소식도 알려드립니다. </p>
					<p><a href="http://goo.gl/xsdUW">http://goo.gl/xsdUW</a></p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5648.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">강의 소식 메일링 리스트</h2>
					<p>생활코딩에서는 비정기적으로 오프라인 수업을 합니다. 아래 양식에 연락처를 적어주시면 수업이 있을 때 알려드립니다. </p>
					<p><a href="https://page.stibee.com/subscriptions/8851">https://page.stibee.com/subscriptions/8851s</a></p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">라이선스</h2>
					<p>생활코딩은 오픈소스를 지지합니다. 그 연장 선상에서 생활코딩의 모든 컨텐츠는 오픈된 컨텐츠 라이선스인 CCL를 따릅니다. 이 말은 생활코딩의 컨텐츠를 이용해서 영리활동을 하셔도 되고, 블로그나 홈페이지에 담아가셔도 됩니다. 또한 생활코딩을 사용하는 컨텐츠가 CCL 라이선스를 따라야 하는 것도 아닙니다. 다만, 영리를 목적으로 하는 경우에는 영리 활동이 생활코딩과의 제휴관계가 아니라 CCL 라이선스에 따른 사용관계라는 것을 사용자가 충분히 인지 가능한 형태로 명시해주셔야 합니다. 생활코딩의 라이선스 규정은 Creative Commons 저작자 표시 2.0 문서를 참고해주세요. 생활코딩 기반으로 출판 계획이 있다면 다음 링크를 참조해주세요. 생활코딩 출판현황</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3-ap-northeast-2.amazonaws.com/opentutorials-user-file/course/1/5650.png" width="150">
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">나만의 코스 만들기</h2>
					<p>생활코딩의 홈페이지인 opentutorials.org는 생활코딩과 같은 활동을 하고자 하는 분들이 그렇게 할 수 있도록 돕기 위한 비영리 플랫폼입니다. 생활코딩의 컨텐츠들을 재조립해서 생활코딩과 같은 새로운 코스를 만들 수 있습니다. 자세한 내용은 아래 동영상을 참고해주세요. 자세한 내용은 opentutorials.org에서 컨텐츠 만들기 토픽을 참고해주세요. </p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h2 style="padding-bottom:4px;border-bottom: 1px dotted black">생활코딩을 돕는 법</h2>
					<ol>
						<li>생활코딩이 있는 이유는 관객이 있기 때문입니다. 생활코딩의 관객이 되어주신 것으로도 충분한 도움이 되고 있습니다.</li>
						<li>생활코딩의 운영자 egoing은 기업이나 단체를 위한 교육과 컨설팅을 하고 있습니다. 참여자에게 비용을 받는 행사에는 참여하지 않고 있습니다. 문의 사항은 egoing@gmail.com으로 연락 부탁드립니다.  강의 경력은 생활코딩 오프라인 수업의 역사를 참고해주세요</li>
						<li>질문은 이메일을 이용하는 것 보다는 댓글이나 커뮤니티와 같이 공개된 방법을 이용해주시면 좋겠습니다.</li>
					</ol>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<div class="movie">
					<iframe allowfullscreen frameborder="0" height="360" src="https://www.youtube.com/embed/JuD76a1wQwo" width="640"></iframe>
					</div>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p style="text-align: center">
					<img src="https://s3.ap-northeast-2.amazonaws.com/opentutorials-user-file/course/94.png" style="font-size: 12px;margin-top: 100px;margin-bottom: 100px;width: 200px;height: 215px;" class="thumbnail">
					</p>
					<p>&nbsp;</p>
				</article>
			</div>
			<div class="section"></div>
		</div>
	</div>
	<footer><p>모바일 버전</p></footer>
</body>
</html>