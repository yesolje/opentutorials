package com.example.demo.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.demo.model.Member;

public interface MemberServiceImpl {
	public List<Member> getMemberList() throws Exception;
	public boolean createMember(Map<String,String> memberMap) throws Exception;
	public Member loginMember(Map<String,String> memberMap) throws Exception;
}
