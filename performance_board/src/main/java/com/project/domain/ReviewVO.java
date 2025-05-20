package com.project.domain;

/*
 create table tbl_performance(
    bno number(10,0),
    img_url varchar2(500) not null, 
    title varchar2(200) not null,
    writer varchar2(50) not null,
    readcount number(4) default 0,      -- 조회수
    regdate date default sysdate,       -- 작성일
    updatedate date default sysdate,     -- 수정일
    content varchar2(1000)
);
*/

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReviewVO {
	private int bno;
	private String image;
	private String eventName;
	private String writer;
	private int readCount; // 조회수
	private Date regDate; // 작성일
	private Date updateDate; // 수정일
}