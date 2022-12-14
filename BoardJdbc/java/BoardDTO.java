//DTO 만들기: 1.클래스생성 2.field 정의 3.기본생성자 4.모든 필드 포함한 생성자 5.getter,setter 

package com.domain;


public class BoardDTO {

	private int num; 
	private String title;
	private String content;
	private String id;
	private String postdate; //input이랑 필드값 다르다! 모든 필드 정의하기
	private int visitcount;
	
	public BoardDTO() {
		
	}
	// 우클릭 > 소스 > Generate Constructor using fields
	public BoardDTO(int num, String title, String content, String id, String postdate, int visitcount) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.id = id;
		this.postdate = postdate;
		this.visitcount = visitcount;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPostdate() {
		return postdate;
	}

	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}

	public int getVisitcount() {
		return visitcount;
	}

	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}

	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", title=" + title + ", content=" + content + ", id=" + id + ", postdate="
				+ postdate + ", visitcount=" + visitcount + "]";
	}	
}
