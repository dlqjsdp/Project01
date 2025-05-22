package com.project.service;

import java.util.List;

import com.project.domain.Criteria;
import com.project.domain.ReviewVO;

public interface ReviewService {
	
	//전체 목록 조회
	public List<ReviewVO> getList(Criteria cri);
	
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
}
