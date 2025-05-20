package com.project.mapper;

import java.util.List;

import com.project.domain.ReviewVO;

public interface ReviewMapper {
	
	public List<ReviewVO> getList();
	
	public ReviewVO read(Long bno);

}
