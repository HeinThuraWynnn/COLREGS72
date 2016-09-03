package admin.bean;

import java.util.List;

public class CatBean {
	private Integer catID;
	private String catName;
	private List<CatBean> catlist;
	private CatBean category;
	private int page;
	private int recordsPerPage;
	private int noOfpages;
	private int currentPage;
	public Integer getCatID() {
		return catID;
	}
	public void setCatID(Integer catID) {
		this.catID = catID;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public List<CatBean> getCatlist() {
		return catlist;
	}
	public void setCatlist(List<CatBean> catlist) {
		this.catlist = catlist;
	}
	public CatBean getCategory() {
		return category;
	}
	public void setCategory(CatBean category) {
		this.category = category;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRecordsPerPage() {
		return recordsPerPage;
	}
	public void setRecordsPerPage(int recordsPerPage) {
		this.recordsPerPage = recordsPerPage;
	}
	public int getNoOfpages() {
		return noOfpages;
	}
	public void setNoOfpages(int noOfpages) {
		this.noOfpages = noOfpages;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
