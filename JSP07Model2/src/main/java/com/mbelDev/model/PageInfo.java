package com.mbelDev.model;

public class PageInfo {
	int page;
	int total; // post 총 갯수
	int pageTotal; // page 총 갯수
	int listNum; // 각 페이지 별 보여줄 게시글 갯수
	int pageNum; // 한 번에 보여줄 페이지 버튼 갯수
	String category; // 현재 보여줄 게시판의 카테고리
	int start;
	int end;
	int pageStart;
	int pageEnd;
	int pageLast;
	int pagePre;
	int pageNxt;
	
	public PageInfo() {
		super();
	}
	
	

	public PageInfo(int page, int total, int pageTotal, int listNum, int pageNum, String category, int start, int end,
			int pageStart, int pageEnd, int pageLast) {
		super();
		this.page = page;
		this.total = total;
		this.pageTotal = pageTotal;
		this.listNum = listNum;
		this.pageNum = pageNum;
		this.category = category;
		this.start = start;
		this.end = end;
		this.pageStart = pageStart;
		this.pageEnd = pageEnd;
		this.pageLast = pageLast;
	}



	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getPageTotal() {
		return pageTotal;
	}


	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}


	public int getListNum() {
		return listNum;
	}


	public void setListNum(int listNum) {
		this.listNum = listNum;
	}


	public int getPageNum() {
		return pageNum;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public int getStart() {
		return start;
	}


	public void setStart(int start) {
		this.start = start;
	}


	public int getEnd() {
		return end;
	}


	public void setEnd(int end) {
		this.end = end;
	}


	public int getPageStart() {
		return pageStart;
	}


	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}


	public int getPageEnd() {
		return pageEnd;
	}


	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}


	public int getPageLast() {
		return pageLast;
	}


	public void setPageLast(int pageLast) {
		this.pageLast = pageLast;
	}


	public int getPagePre() {
		return pagePre;
	}



	public void setPagePre(int pagePre) {
		this.pagePre = pagePre;
	}



	public int getPageNxt() {
		return pageNxt;
	}



	public void setPageNxt(int pageNxt) {
		this.pageNxt = pageNxt;
	}



	@Override
	public String toString() {
		return "PageInfo [page=" + page + ", total=" + total + ", pageTotal=" + pageTotal + ", listNum=" + listNum
				+ ", pageNum=" + pageNum + ", category=" + category + ", start=" + start + ", end=" + end
				+ ", pageStart=" + pageStart + ", pageEnd=" + pageEnd + ", pageLast=" + pageLast + ", pagePre="
				+ pagePre + ", pageNxt=" + pageNxt + "]";
	}
	
	
}
