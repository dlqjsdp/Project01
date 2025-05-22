package com.project.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {

	private Long bno;
	private String img;
	private String title;
	private String writer;
	private int readCount;
	private Date regDate;
	private Date updateDate;
	private String content;
}
