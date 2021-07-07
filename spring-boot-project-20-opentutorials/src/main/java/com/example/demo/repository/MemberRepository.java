package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Member;

public interface MemberRepository extends JpaRepository<Member,String>{

	@Query(value = "SELECT u FROM Member u where u.id = ?1")
	Member findByMemberId(String id);

}
