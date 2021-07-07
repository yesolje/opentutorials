package com.example.demo.model;

public class BoardCriteria {
	
	private Long totalPost;				//게시글 총 갯수
	private int postPerPage;			//한페이지에 보여줄 최대 게시글 수
	private int totalPage; 				//페이지 총 갯수
	private int currentPage;			//현재페이지
	private int pagePerBlock;			//한번에 보여줄 페이지 수
	private int currentBlock;			//현재 페이지 영역의 위치
	private int totalBlock; 			//페이지 영역의 총 개수
	
	public BoardCriteria(){
		this.postPerPage=3;
		this.pagePerBlock=3;
		this.currentBlock=1;
	}

	public Long getTotalPost() {
		return totalPost;
	}

	public void setTotalPost(Long totalPost) {
		this.totalPost = totalPost;
	}

	public int getPostPerPage() {
		return postPerPage;
	}

	public void setPostPerPage(int postPerPage) {
		this.postPerPage = postPerPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPagePerBlock() {
		return pagePerBlock;
	}

	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	
	
	
}
