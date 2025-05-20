package com.project.controller;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/root-context.xml"	
})
@Log4j
@WebAppConfiguration
public class ReviewControllerTests {
	
	@Autowired // 웹 관련 빈(생성된 객체) 관리
	private WebApplicationContext ctx; //Spring의 웹 애플리케이션 컨텍스트를 주입
	
	// 서버를 실행하지 않고도 HTTP 요청과 응답을 시뮬레이션 하기 위한 도구
	private MockMvc mockMvc; //서버 없이 컨트롤러를 테스트할 수 있게 해주는 핵심 도구
	
	@Before //Spring MVC 애플리케이션에서 통합 테스트 수행, 실제 서버를 실행하지 않고 컨트롤러 동작을 테스트 가능
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	} //테스트 실행 전에 mockMvc를 초기화, 이걸 통해 실제 요청 없이 컨트롤러를 호출

	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
