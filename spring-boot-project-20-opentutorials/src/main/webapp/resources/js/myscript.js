function createBoard(){
	var jsonData ={
		title:document.getElementById('board-title').value,
		name:document.getElementById('name').value,
		passwd:document.getElementById('passwd').value,
		contents: document.getElementById('contents').value
	}
	$.ajax({
		url:"/opentutorials/createBoard",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success:function(response){
			if(response){
				alert("글이 정상적으로 게시되었습니다.");
				location.href='/opentutorials/board'
			}else{
				alert("글 게시에 실패하였습니다.")
			}
		},
		error : function (request,status,error){
			console.log(error);
		}
	});
}


function modifyBoard(boardNum){
	var address ='/opentutorials/board/modify/' + boardNum;
	location.href=address;
}

function modifyBoardConfirm(boardNum){
	var jsonData ={
		num: boardNum,
		title:document.getElementById('board-title').value,
		name:document.getElementById('name').value,
		passwd:document.getElementById('passwd').value,
		contents: document.getElementById('contents').value
	}
	$.ajax({
		url:"/opentutorials/modifyBoard",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success : function(response){
			if(response){
				alert("글이 수정되었습니다.");
				location.href='/opentutorials/board'
			}else{
				alert("글 수정에 실패하였습니다.");
			}
		},
		error : function(request,status,error){
			console.log(error);
		}
	})
}

function deleteBoardConfirm(boardNum){
	if(confirm('정말 삭제하시겠습니까?')){
		deleteBoard(boardNum);
	}else{
		alert('게시글 삭제가 취소되었습니다.');
	}
}

function deleteBoard(boardNum){
	var jsonData = {
		num: boardNum
	}
	$.ajax({
		url:"/opentutorials/deleteBoard",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success:function(response){
			if(response){
				alert("글이 삭제되었습니다.");
				location.href='/opentutorials/board';
			}else{
				alert("글 삭제에 실패하였습니다.")
			}
		},
		error : function (request,status,error){
			console.log(error);
		}
	})
}

function createMember(){
	var jsonData={
		nickname:document.getElementById('nickname').value,
		password:document.getElementById('pw').value,
		email:document.getElementById('email').value
	}
	var emailconfirm = document.getElementById('email').value;
	if (!jsonData.nickname || jsonData.nickname === '') {
		document.getElementById('alertname').innerText="아이디는 영문 또는 영문+대문자 조합으로 설정해 주세요";
		return;
	}else if(!jsonData.email||jsonData.email===''||!emailconfirm.includes('@')){
		document.getElementById('alertemail').innerText="이메일을 확인해 주세요";
		return;
	}else if(!jsonData.password||jsonData.password===''){
		document.getElementById('alertpassword').innerText="비밀번호는 공백일 수 없습니다";
		return;
	}else if(document.getElementById('pwagain').value !=jsonData.password){
		document.getElementById('alertpasswordagain').innerText="2차 비밀번호를 다시 확인해 주세요";
		return;
	}
	$.ajax({
		url:"/opentutorials/createmember",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success:function(response){
			if(response){
				alert("회원가입에 성공했습니다.");
				location.href='/opentutorials/login';
			}else{
				alert("회원가입에 실패했습니다.")
			}
		},
		error : function(request,status,error){
			consol.log(error);
		}
	})
}

function login(){
	var jsonData = {
		nickname:document.getElementById('id-here').value,
		password:document.getElementById('pw-here').value
	}
	$.ajax({
		url:"/opentutorials/signup",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success:function(response){
			if(response){
				alert("로그인에 성공하였습니다.");
				location.href="/opentutorials/main";
			}else{
				alert("로그인에 실패했습니다. 아이디와 패스워드를 확인해 주세요")
			}
		},
		error:function(request,status,error){
			console.log(error);
		}
	})
}

/* 이런 방법도 있음. 하지만 controller 단에서 제어되고 있음
function checkLoginUser(loginUserId) {
	if (!loginUserId) {
		alert('로그인이 필요한 서비스 입니다.');
		location.href ="/opentutorials/login";
	}
}
*/

function logout(){
	if(confirm('정말 로그아웃하시겠습니까?')){
		location.href='/opentutorials/logout';	
	}else{
		alert("로그아웃이 취소되었습니다.");
	}
}

function createBoardPage(boardCriteria) {
	boardCriteria.totalPage = Math.ceil(boardCriteria.totalPost / boardCriteria.postPerPage);
	if (boardCriteria.totalPage === 0) {
		boardCriteria.totalPage = 1;
	}
	boardCriteria.totalBlock = Math.ceil(boardCriteria.totalPage / boardCriteria.pagePerBlock);
	
	var html = "<table id='board-page'>";
		html += "<tr>";
		if(boardCriteria.currentBlock != 1){
			html += 	"<td onclick='firstBoardPage();'>◀◀</td>";
		}
		html += 	"<td onclick='previousBoardPage();'>◀</td>";
		
		var startPage;
		if (boardCriteria.currentBlock === 1) {
			startPage = 1;
		} else {
			startPage = (boardCriteria.currentBlock-1)*boardCriteria.pagePerBlock + 1;
		}
		for (var i=startPage; i<boardCriteria.totalPage+1; i++) {
			if (boardCriteria.currentBlock === 1) {
				html += "<td onclick='getBoardsByPageNum("+i+")'>" + i + "</td>";
				if (i === boardCriteria.pagePerBlock) {
					i = boardCriteria.totalPage+1;
				}
			} else if ((boardCriteria.currentBlock-1)*boardCriteria.pagePerBlock < i && boardCriteria.currentBlock*boardCriteria.pagePerBlock >= i) {
				html += "<td onclick='getBoardsByPageNum("+i+")'>" + i + "</td>";
			} else {
				i = boardCriteria.totalPage+1; 
			}
		}
		html += 	"<td onclick='nextBoardPage();'>▶</td>";
		if(boardCriteria.currentBlock !=boardCriteria.totalBlock){
			html += 	"<td onclick='lastBoardPage();'>▶▶</td>";
		}
		html += "</tr>";
		html += "</table>";
	$('#board-page').html(html);
}

function previousBoardPage() {
	boardCriteria.currentBlock--;
	if (boardCriteria.currentBlock === 0) {
		alert('처음 페이지입니다.');
	} else {
		createBoardPage(boardCriteria);
	}
}

function nextBoardPage() {
	boardCriteria.currentBlock++;
	if (boardCriteria.totalBlock < boardCriteria.currentBlock) {
		alert('마지막 페이지입니다.');
	} else {
		createBoardPage(boardCriteria);
	}
}

function firstBoardPage(){
	boardCriteria.currentBlock=1;
	createBoardPage(boardCriteria);	
}
function lastBoardPage(){
	boardCriteria.currentBlock=boardCriteria.totalBlock;
	createBoardPage(boardCriteria);
}

function getBoardsByPageNum(pageNum){
	var jsonData ={
		pageNum:pageNum
	}
	$.ajax({
		url:"/opentutorials/getBoardsByPageNum",
		type:"POST",
		dataType:"json",
		contentType:"application/json",
		data:JSON.stringify(jsonData),
		success:function(response){
			if(response){
				createBoardTable(response);
			}else{
				alert("error occured")
			}
		},
		error : function(request,status,error){
			console.log(error);
		}
	})
}

function createBoardTable(boards){
	var html = "<table id='board-table-content'>";
		html += "<tr>";
		html +=		"<th id ='number'>번호</th>";
		html +=		"<th id ='title'>제목</th>";
		html +=		"<th id ='writer'>글쓴이</th>";
		html +=		"<th id ='ontime'>작성일시</th>";
		html +=		"<th id ='look'>조회</th>";
		html += "</tr>";
		
		for(var i=0;i<boards.length;i++){
			html += "<tr>";
			html +=		"<td>"+boards[i].num+"</td>";
			html +=		"<td class='linkto'><a href='/opentutorials/board/"+boards[i].num+"'>"+boards[i].title+"</a></td>";
			html +=		"<td>"+boards[i].writer+"</td>";
			html +=		"<td>"+boards[i].writedate+"</td>";
			html +=		"<td>"+boards[i].look+"</td>";
			html += "</tr>";
		}
		html += "</table>";
	$('#board-table-content').html(html);
}


