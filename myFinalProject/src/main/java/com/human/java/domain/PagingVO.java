package com.human.java.domain;

import lombok.Data;

@Data
public class PagingVO {
	private int pageNum;
	private int startPage;
	private int endPage;
}
