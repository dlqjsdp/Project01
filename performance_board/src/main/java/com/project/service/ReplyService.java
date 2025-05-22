package com.project.service;

import java.util.List;


import com.project.domain.ReplyPageDTO;

import com.project.domain.Criterial;
import com.project.domain.ReplyVO;

public interface ReplyService {
	
	public int register(ReplyVO vo);
	
	public ReplyVO get(Long rno);
	
	public int modify(ReplyVO vo);
	
	public int remove(Long rno);
	
	public List<ReplyVO> getList(Criterial cri, Long bno);
	
	public ReplyPageDTO getListPage(Criterial cri, Long bno);
}
