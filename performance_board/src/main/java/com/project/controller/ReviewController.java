package com.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.domain.Criteria;
import com.project.domain.PageDTO;
import com.project.domain.ReviewVO;
import com.project.service.ReviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/review")
@RequiredArgsConstructor
@Log4j
public class ReviewController {
	
	private final ReviewService service;
	
	@GetMapping("/reviewList")
	public String list(Criteria cri, Model model) {
		log.info("review list..." + cri);
		
		// 1. 페이징 된 리뷰 목록 가져오기
		List<ReviewVO> list = service.getList(cri);
		
		// 2. 전체 리뷰 수 가져오기ㅎㄷ
		int total = service.getTotal(cri);
		
		// 3. 모델에 목록 + 페이지 정보 담기
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "review/reviewList";
	}
	
	@PostMapping("/reviewRegister")
	public String register(ReviewVO vo) {
		log.info("register...");
		
		service.register(vo);
		
		return "redirect:/review/reviewList";
	}
	
	@GetMapping("/reviewGet")
	public void getReview(@RequestParam Long bno, Model model) {
		log.info("get...");
		
		model.addAttribute("performance", service.get(bno));
	}
	
	@PostMapping("/reviewRemove")
	public String remove(Long bno) {
		log.info("remove...");
		
		service.remove(bno);
		
		return "redirect:/review/reviewList";
	}
	
	@PostMapping("/reviewModify")
	public String modify(ReviewVO vo) {
		log.info("modify...");
		
		service.modifiy(vo);
		
		return "redirect:/review/reviewList";
	}
	
}