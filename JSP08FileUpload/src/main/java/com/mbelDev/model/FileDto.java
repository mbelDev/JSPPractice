package com.mbelDev.model;

public class FileDto {
	private int no;
	private String title;
	private String category;
	private int depth;
	private int price;
	private String fileImage;
	private String fielRealImage;
	
	public FileDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FileDto(int no, String title, String category, int depth, int price, String fileImage,
			String fielRealImage) {
		super();
		this.no = no;
		this.title = title;
		this.category = category;
		this.depth = depth;
		this.price = price;
		this.fileImage = fileImage;
		this.fielRealImage = fielRealImage;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getFileImage() {
		return fileImage;
	}

	public void setFileImage(String fileImage) {
		this.fileImage = fileImage;
	}

	public String getFielRealImage() {
		return fielRealImage;
	}

	public void setFielRealImage(String fielRealImage) {
		this.fielRealImage = fielRealImage;
	}

	@Override
	public String toString() {
		return "FileDao [no=" + no + ", title=" + title + ", category=" + category + ", depth=" + depth + ", price="
				+ price + ", fileImage=" + fileImage + ", fielRealImage=" + fielRealImage + "]";
	}
	
	
}