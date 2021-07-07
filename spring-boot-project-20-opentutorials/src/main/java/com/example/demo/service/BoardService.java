package com.example.demo.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Board;
import com.example.demo.model.BoardCriteria;
import com.example.demo.repository.BoardRepository;
import com.example.demo.util.Util;
import com.example.demo.constant.Constant;

@Service
public class BoardService implements BoardServiceImpl {

	@Autowired
	BoardRepository boardrepository;
	
	
//DB에서 게시글 데이터 갯수 받아오기----------------------------------------------------------------------
	@Override
	public Long getTotalBoardCount() throws Exception {
		Long totalCount = boardrepository.count();
		return totalCount;
	}
	
//DB에서 게시글 리스트로 받아오기----------------------------------------------------------------------	
	@Override
	public List<Board> getListBoard() throws Exception {
		List<Board> listproduct = new ArrayList<Board>();
		listproduct = boardrepository.findAll(Util.sortByParam(Constant.NUM, Constant.DESC));
		return listproduct;
	}

//--------------------------------------------------------------------------------------------	
	@Override
	public List<Board> getBoardsByPageNum(int pageNum) throws Exception{
		BoardCriteria boardCriteria = new BoardCriteria();
		int postPerPage = boardCriteria.getPostPerPage();
		
		int startNum = (pageNum-1) *postPerPage;
		if(pageNum ==1) startNum =0;
		List<Board> boards = boardrepository.getBoardsByPageNum(startNum, postPerPage);
		return boards;
	}
	
	
//DB에서 요건에 충족하는 게시글 하나 가져오기----------------------------------------------------------------------	
	@Override
	public Board getBoardDetail(int num) throws Exception {
		Optional <Board >opboard = boardrepository.findById(num);
		Board board = opboard.get();
		return board;
	}

//게시글 생성 후 DB에 저장----------------------------------------------------------------------	
	@Override
	public boolean createBoard(Map<String, String> boardMap) throws Exception {
		Board board = new Board();
		
		int number = Integer.parseInt(boardMap.get("passwd"));
		
		board.setTitle(boardMap.get("title"));
		board.setWriter(boardMap.get("name"));
		board.setPassword(number);
		board.setContent(boardMap.get("contents"));
		board.setWritedate(new Date());
		board.setLook(0);
		
		boardrepository.save(board);
		return true;
	}

//게시글 수정 후 DB에 저장----------------------------------------------------------------------		
	@Override
	public boolean modifyBoard(Map<String, String> boardMap) throws Exception {
		Board board = new Board();
		
		int number = Integer.parseInt(boardMap.get("num"));
		int number2 = Integer.parseInt(boardMap.get("passwd"));
		
		board.setNum(number);
		board.setTitle(boardMap.get("title"));
		board.setWriter(boardMap.get("name"));
		board.setWritedate(new Date());
		board.setPassword(number2);
		board.setContent(boardMap.get("contents"));
		board.setLook(0);
		
		boardrepository.save(board);
		return true;
	}

//조건에 맞는 게시글 DB에서 삭제----------------------------------------------------------------------		
	@Override
	public boolean deleteBoard(Map<String, String> boardMap) throws Exception {
		int number = Integer.parseInt(boardMap.get("num"));
		boardrepository.deleteById(number);
		return true;
	}

	

}
