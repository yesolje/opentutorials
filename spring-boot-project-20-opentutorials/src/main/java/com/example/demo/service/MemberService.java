package com.example.demo.service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Member;
import com.example.demo.repository.MemberRepository;

@Service
public class MemberService implements MemberServiceImpl{
	
	@Autowired
	MemberRepository memberRepository;
	

	@Override
	public boolean createMember(Map<String,String> memberMap) throws Exception {
		Member member = new Member();
		member.setId(memberMap.get("nickname"));
		member.setEmail(memberMap.get("email"));
		member.setPassword(memberMap.get("password"));
		
		memberRepository.save(member);
		return true;
	}


	@Override
	public Member loginMember(Map<String, String> memberMap) throws Exception {
		boolean memberExist = false;
		
		Member memberByUser = new Member();
		memberByUser.setId(memberMap.get("nickname"));
		memberByUser.setPassword(memberMap.get("password"));
		
		Member member = memberRepository.findByMemberId(memberMap.get("nickname"));
		if (member != null) {
			if (member.getPassword().equals(memberByUser.getPassword())) {
				memberExist = true;
			}
		}

//		**이 방법은 memberId 가 entity의 id 가 아니기에 사용할 수 없다.**
//		Optional<Member> optionalMember =  memberRepository.findById(memberMap.get("nickname"));
//		if (!optionalMember.isEmpty()) {
//			Member member = optionalMember.get();
//			if (member.getPassword().equals(memberByUser.getPassword())) {
//				memberExist = true;
//			}
//		}
		
//		**C급**
//		boolean memberExist = false;
//		List<Member> memberList = getMemberList();
//		for (int i=0; i<memberList.size(); i++) {
//			String memberId = memberList.get(i).getId();
//			String memberPw = memberList.get(i).getPassword();
//			
//			if (member.getId().equals(memberId) && member.getPassword().equals(memberPw)) {
//				memberExist = true;
//			}
//		}
		if (memberExist) {
			return member;
		} else {
			return null;
		}
	}

	@Override
	public List<Member> getMemberList() throws Exception {
		List<Member> memberList = memberRepository.findAll();
		return memberList;
	}

	
}
