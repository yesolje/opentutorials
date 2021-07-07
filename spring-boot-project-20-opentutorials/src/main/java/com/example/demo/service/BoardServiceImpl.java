package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.model.Board;

public interface BoardServiceImpl {
	public Long getTotalBoardCount() throws Exception;
	public List<Board> getListBoard() throws Exception;
	public List<Board> getBoardsByPageNum(int pageNum) throws Exception;
	public Board getBoardDetail(int num) throws Exception;
	public boolean createBoard(Map<String,String> boardMap) throws Exception;
	public boolean modifyBoard(Map<String,String> boardMap) throws Exception;
	public boolean deleteBoard(Map<String,String> boardMap) throws Exception;
	
}
