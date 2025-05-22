package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.project.domain.Criteria;
import com.project.domain.ReviewVO;

public interface ReviewMapper {
	
	//전체 데이터 조회
	public List<ReviewVO> getListWithPage(Criteria cri);
	
	//전체 데이터 수
	public int getTotoalCount(Criteria cri);
	
	//단건 조회
	public ReviewVO read(Long bno);
	
	//데이터 저장
	public void insertSelectKey(ReviewVO review);
	
	//데이터 삭제
	public int delete(Long bno);
	
	//데이터 변경
	public int update(ReviewVO review);
	
	//조회수 증가
	public void updateReadCount(Long bno);
	
	//replyCnt 값
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
}
