package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.domain.PerformanceVO;
import com.project.service.PerformanceService;


@Controller
@RequestMapping("/performance")
public class PerformanceController {
	
	 private final PerformanceService performanceService;

	    @Autowired
	    public PerformanceController(PerformanceService performanceService) {
	        this.performanceService = performanceService;
	    }

	    @GetMapping("/performanceList")
	    public String showList(Model model) {
	    	System.out.println(">>>>> /performance/performanceList 요청 들어옴");
	    	
	        List<PerformanceVO> list = performanceService.fetchPerformances();
	        model.addAttribute("performanceList", list);
	        return "performance/performanceList";
	    }
}
