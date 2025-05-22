package com.project.service;

import java.util.List;

import com.project.domain.Criteria;
import com.project.domain.ReviewVO;

public interface ReviewService {
	
	//단건 조회
	public ReviewVO get(Long bno);
	
	//등록
	public void register(ReviewVO vo);
	
	//수정
	public boolean modifiy(ReviewVO vo);
	
	//삭제
	public boolean remove(Long bno);
	
	//조회수 증가
	public void updateReadCount(Long bno);

	// 기본 목록
	public List<ReviewVO> getList();
	
	// 페이징
	public List<ReviewVO> getList(Criteria cri);
	
	// 총 개수
	public int getTotal(Criteria cri);
}