package com.mbelDev.model;

public class BoardDto {
	private int postno;
	private String author;
	private String contents;
	private String regDate;
	public BoardDto() {
		super();
	}
	public BoardDto(int postno, String author, String contents, String regDate) {
		super();
		this.postno = postno;
		this.author = author;
		this.contents = contents;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardDto [postno=" + postno + ", author=" + author + ", contents=" + contents + ", regDate=" + regDate + "]";
	}
	public int getpostno() {
		return postno;
	}
	public void setpostno(int postno) {
		this.postno = postno;
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