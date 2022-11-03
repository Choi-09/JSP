package com;	

public class BoardDTO {
	//field 정의
	private int num;
	private String title;
	private String content;

	//기본생성자
	public BoardDTO() {
	}	
	
	//모든 필드 포함한 생성자
	public BoardDTO(int num, String title, String content) {
		super();
		this.num = num;
		this.title=title;
		this.content=content;
	}
	
	//getter,setter
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
	
	//toString 
	@Override
	public String toString() {
		return "BoardDTO [num =" + num + ", title=" + title + ", content=" + content+"]";
	}
}
