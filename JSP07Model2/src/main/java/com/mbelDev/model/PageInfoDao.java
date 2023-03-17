package com.mbelDev.model;

public class PageInfoDao {
	
	public PageInfo setData(int page, int total, int listNum, int pageNum) {
		PageInfo pageInfo = new PageInfo();
		
		int start = (page-1)*listNum+1;
		int end = start+listNum-1;
		if(end>total) {
			end = total;
		}
		
		
		int pageTotal = (int)(Math.ceil(total/listNum))+1;
		int pageStart = (int)((page-1)/pageNum)*pageNum+1;  
		int pageEnd = pageStart+pageNum-1;
		int pageLast = 0;  // 아래쪽 페이지(pageBox)의 전체 갯수
		
		if(total%listNum==0) {
			pageLast =  (int)(total / listNum);
		} else {
			pageLast =  (int)(total / listNum)+1;
		}
		
		if(pageEnd > pageLast) {
			pageEnd = pageLast;
		}else{
			pageEnd = pageStart+listNum-1;
		};
		
		int pagePre = 0;
		int pageNxt = 0;
		if(page - pageNum > 0) pagePre = (int)(page/pageNum)*pageNum;
		if((int)(page-1)/pageNum < (int)(pageTotal/pageNum)) pageNxt = (int)((page+pageNum)/pageNum)*pageNum;
		
		pageInfo.setPage(page);
		pageInfo.setTotal(total);
		pageInfo.setListNum(listNum);
		pageInfo.setPageNum(pageNum);
		pageInfo.setStart(start);
		pageInfo.setEnd(end);
		pageInfo.setPageTotal(pageTotal);
		pageInfo.setPageStart(pageStart);
		pageInfo.setPageEnd(pageEnd);
		pageInfo.setPageLast(pageLast);
		pageInfo.setPagePre(pagePre);
		pageInfo.setPageNxt(pageNxt);
		
		return pageInfo;
	}
}
