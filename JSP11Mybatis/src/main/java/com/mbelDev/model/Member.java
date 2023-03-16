package com.mbelDev.model;

public class Member{
	private String userID;
	private String userNM;
	private String userIcon;
	private int userLV;
	private int userEXP;
	
	public Member() {
		super();
	}
	
	public Member(String userID, String userNM, String userIcon, int userLV, int userEXP) {
		super();
		this.userID = userID;
		this.userNM = userNM;
		this.userIcon = userIcon;
		this.userLV = userLV;
		this.userEXP = userEXP;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserNM() {
		return userNM;
	}
	public void setUserNM(String userNM) {
		this.userNM = userNM;
	}
	public String getUserIcon() {
		return userIcon;
	}
	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}
	public int getUserLV() {
		return userLV;
	}
	public void setUserLV(int userLV) {
		this.userLV = userLV;
	}
	public int getUserEXP() {
		return userEXP;
	}
	public void setUserEXP(int userEXP) {
		this.userEXP = userEXP;
	}
	@Override
	public String toString() {
		return "Member [userID=" + userID + ", userNM=" + userNM + ", userIcon=" + userIcon + ", userLV=" + userLV
				+ ", userEXP=" + userEXP + "]";
	}
	
	
}