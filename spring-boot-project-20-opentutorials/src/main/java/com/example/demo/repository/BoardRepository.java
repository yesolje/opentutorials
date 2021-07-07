package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Board;

public interface BoardRepository extends JpaRepository<Board,Integer>{
	//쿼리 부분 MariaDB에 맞게 변형 필요
	
//	@Query(value = "SELECT u.*FROM board u ORDER BY u.num DESC OFFSET ?1 LIMIT?2",nativeQuery = true)
	@Query(value = "SELECT u.* FROM board u ORDER BY u.num DESC limit ?1 ,?2",nativeQuery=true)
	public List<Board> getBoardsByPageNum(@Param("start") int start, @Param("end") int end);
}
