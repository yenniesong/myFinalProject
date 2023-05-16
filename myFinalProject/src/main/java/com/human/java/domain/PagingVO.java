package com.human.java.domain;

import lombok.Data;

@Data
public class PagingVO {
	
	private int totalCount;	// 리스트의 총 갯수
	private int totalPageCount;	// 리스트의 총 갯수 / 보여줄 리스트 수
	
	private int pageNum = 1;
	private int startPage;
	private int endPage;
	
	private int countPerPage = 10;	// 내가 화면에 보여주고 싶은 게시글의 수
	
	private int groupNum = 1;	
	private int totalGroupCount;
	
	
	private int countPerGroup = 5;
	
	private int groupStartPage;
	private int groupEndPage;
	
	
}
