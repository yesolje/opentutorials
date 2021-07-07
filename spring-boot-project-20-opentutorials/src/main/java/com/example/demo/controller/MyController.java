package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Board;
import com.example.demo.model.BoardCriteria;
import com.example.demo.model.Member;
import com.example.demo.service.BoardService;
import com.example.demo.service.MemberService;

@RestController
public class MyController {

	@Autowired
	BoardService boardservice;
	
	@Autowired
	MemberService memberservice;
	
	//메인페이지---------------------------------------------------
	@RequestMapping("/opentutorials/main")
	public ModelAndView opentutorialsMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("opentutorials_main");
		HttpSession httpSession = request.getSession();
		Object memberObj = httpSession.getAttribute("loginUser");
		Member member = (Member) memberObj;
		mav.addObject("loginUser", member);
		return mav;
	}
	
	//로그인페이지---------------------------------------------------
	@RequestMapping("/opentutorials/login")
	public ModelAndView opentutorialsLogin () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("opentutorials_login");
		return mav;
	}
	
	//회원가입페이지---------------------------------------------------
	@RequestMapping("/opentutorials/join")
	public ModelAndView opentutorialsJoin () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("opentutorials_join");
		return mav;
	}
	
	//게시판메인(리스트)페이지---------------------------------------------------
	@RequestMapping("/opentutorials/board")
	public ModelAndView opentutorialsBoard(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession httpSession = request.getSession();
		Object memberObj = httpSession.getAttribute("loginUser");
		Member member = (Member) memberObj;
		mav.addObject("loginUser", member);
		
		try {
			if (member != null) {
				BoardCriteria boardCriteria = new BoardCriteria();
				
				Long totalCount = boardservice.getTotalBoardCount();
				boardCriteria.setTotalPost(totalCount);
				
				mav.addObject("boardCriteria", boardCriteria);
				mav.setViewName("board");
				
			} else {
				mav.setViewName("opentutorials_login");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	//페이지번호 받아서 페이지에 맞는 게시글 뿌려줌----------------------------------------------------
	@RequestMapping(value="/opentutorials/getBoardsByPageNum",method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Object getBoardsByPageNum(@RequestBody Map<String,Integer>requestBody,HttpServletRequest request,HttpServletResponse response) {
		List<Board> boards = new ArrayList<Board>();
		try {
			boards = boardservice.getBoardsByPageNum(requestBody.get("pageNum"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boards;
	}
	
	//게시판상세페이지---------------------------------------------------
	@RequestMapping("/opentutorials/board/{num}")
	public ModelAndView opentutorialsBoard (@PathVariable(name="num")int num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board_detail");
		try {
			Board board = boardservice.getBoardDetail(num);
			mav.addObject("board", board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//게시판상세페이지(수정시)---------------------------------------------------
	@RequestMapping("/opentutorials/board/modify/{num}")
	public ModelAndView opentutorialsBoardModify (@PathVariable(name="num")int num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board_modify");
		try {
			Board board = boardservice.getBoardDetail(num);
			mav.addObject("board", board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//게시판글작성페이지---------------------------------------------------
	@RequestMapping("/opentutorials/board/writeTab")
	public ModelAndView opentutorialsBoardWrite () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board_writetab");
		return mav;
	}
	
	
	//게시판기능"생성"---------------------------------------------------	
	@RequestMapping(value="/opentutorials/createBoard", method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Object opentutorialsBoardCreate(@RequestBody Map<String,String>requestBody,HttpServletRequest request,HttpServletResponse response) {
		boolean result = false;
		try {
			result = boardservice.createBoard(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
		
	//게시판기능"수정"---------------------------------------------------	
	@RequestMapping(value="/opentutorials/modifyBoard", method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Object opentutorialsBoardMoify(@RequestBody Map<String,String>requestBody,HttpServletRequest request,HttpServletResponse response) {
		boolean result = false;
		try {
			result = boardservice.modifyBoard(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	//게시판기능"삭제"---------------------------------------------------	
	@RequestMapping(value="/opentutorials/deleteBoard", method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Object opentutorialsBoardDelete(@RequestBody Map<String,String>requestBody,HttpServletRequest request,HttpServletResponse response) {
		boolean result = false;
		try {
			result = boardservice.deleteBoard(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//로그인 관련--------------------------------------------------------
	//회원가입----------------------------------------------------------
	@RequestMapping(value="/opentutorials/createmember",method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody Object opentutorialsMemberCreate(@RequestBody Map<String,String>requestBody,HttpServletRequest request,HttpServletResponse response) {
		boolean result = false;
		try {
			result = memberservice.createMember(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	//로그인----------------------------------------------------------
	@RequestMapping(value="/opentutorials/signup", method =RequestMethod.POST)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody boolean login(@RequestBody Map<String,String> requestBody, HttpServletRequest request, HttpServletResponse response) {
		boolean result = false;
		try {
			Member member = memberservice.loginMember(requestBody);
			if (member != null) {
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("loginUser", member);
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//로그아웃----------------------------------------------------------
	@RequestMapping(value="/opentutorials/logout", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseStatus(HttpStatus.OK)
	public ModelAndView logout(HttpSession httpSession) {
		httpSession.removeAttribute("loginUser");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("opentutorials_main");
		return mav;
		
	}
	
	
	
	
}
