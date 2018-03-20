package com.cxgc.news_app.page;

import java.util.List;

/**
 * 分页
 * @author Administrator
 *
 */
public class Page {

	private int page = 1;//当前第几页
	private int start;//从多少开始
	private int pageSize = 10;//一页显示多少条
	private int countPage;//一共显示多少页
	private int count;//总共条数
	private List list;//查询对象
	
	
	public int getStart() {
		start=(page-1)*pageSize;
		return start;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCountPage() {
		countPage = count/pageSize+1;
		return countPage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
}
