package com.mbelDev.model;

public class BoardDto {
	private int postNo;
	private String postAuth;
	private String postPW;
	private String postCTGR;
	private String postTitle;
	private String postCont;
	private String regDate;
	public BoardDto() {
		super();
	}
	public BoardDto(int postNo, String postAuth, String postPW, String postCTGR, String postTitle, String postCont,
			String regDate) {
		super();
		this.postNo = postNo;
		this.postAuth = postAuth;
		this.postPW = postPW;
		this.postCTGR = postCTGR;
		this.postTitle = postTitle;
		this.postCont = postCont;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardDto [postNo=" + postNo + ", postAuth=" + postAuth + ", postPW=" + postPW + ", postCTGR=" + postCTGR
				+ ", postTitle=" + postTitle + ", postCont=" + postCont + ", regDate=" + regDate + "]";
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getPostAuth() {
		return postAuth;
	}
	public void setPostAuth(String postAuth) {
		this.postAuth = postAuth;
	}
	public String getPostPW() {
		return postPW;
	}
	public void setPostPW(String postPW) {
		this.postPW = postPW;
	}
	public String getPostCTGR() {
		return postCTGR;
	}
	public void setPostCTGR(String postCTGR) {
		this.postCTGR = postCTGR;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostCont() {
		return postCont;
	}
	public void setPostCont(String postCont) {
		this.postCont = postCont;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	
}	