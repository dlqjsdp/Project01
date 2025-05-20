package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.domain.ReviewVO;
import com.project.mapper.ReviewMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor //생성자 주입
public class ReviewServiceImpl implements ReviewService{
	
	private final ReviewMapper mapper;

	@Override
	public List<ReviewVO> getList() {
		log.info("getList.......");
		return mapper.getList();
	}
	
}
