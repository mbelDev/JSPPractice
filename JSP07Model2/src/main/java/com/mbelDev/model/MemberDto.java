package com.mbelDev.model;

public class MemberDto {
	private int no;
	private String userID;
	private String userPW;
	private String userNM;
	private String userEM;
	private String userHP;
	private int userZIP;
	private String userAD;
	private String date;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserNM() {
		return userNM;
	}
	public void setUserNM(String userNM) {
		this.userNM = userNM;
	}
	public String getUserEM() {
		return userEM;
	}
	public void setUserEM(String userEM) {
		this.userEM = userEM;
	}
	public String getUserHP() {
		return userHP;
	}
	public void setUserHP(String userHP) {
		this.userHP = userHP;
	}
	public int getUserZIP() {
		return userZIP;
	}
	public void setUserZIP(int userZIP) {
		this.userZIP = userZIP;
	}
	public String getUserAD() {
		return userAD;
	}
	public void setUserAD(String userAD) {
		this.userAD = userAD;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public MemberDto(int no, String userID, String userPW, String userNM, String userEM, String userHP, int userZIP,
			String userAD, String date) {
		super();
		this.no = no;
		this.userID = userID;
		this.userPW = userPW;
		this.userNM = userNM;
		this.userEM = userEM;
		this.userHP = userHP;
		this.userZIP = userZIP;
		this.userAD = userAD;
		this.date = date;
	}
	public MemberDto() {
		super();
	}
	@Override
	public String toString() {
		return "MemberDto [no=" + no + ", userID=" + userID + ", userPW=" + userPW + ", userNM=" + userNM + ", userEM="
				+ userEM + ", userHP=" + userHP + ", userZIP=" + userZIP + ", userAD=" + userAD + ", date=" + date
				+ "]";
	}
	
	
}
