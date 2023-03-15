package com.mbelDev.model;

public class BoardDto {
	private int no;
	private String author;
	private String contents;
	private String regDate;
	public BoardDto() {
		super();
	}
	public BoardDto(int no, String author, String contents, String regDate) {
		super();
		this.no = no;
		this.author = author;
		this.contents = contents;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardDto [no=" + no + ", author=" + author + ", contents=" + contents + ", regDate=" + regDate + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	} 
	
	
}	