package com.project.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;


@Data
public class MemberVO {

	
	private String userid;
	private String userpw;
	private String userName;
	
	private boolean enabled;
	
	private Date regDate;
	private Date updateDate;
	private String email;
	
	private List<AuthVO> authList;


}
