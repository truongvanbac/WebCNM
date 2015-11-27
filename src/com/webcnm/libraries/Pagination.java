package com.webcnm.libraries;

public class Pagination {

	private int page = 1;
	private int recordsPerPage;
	private int noOfRecords;
	private int noOfPages;

	public Pagination(int noOfRecoreds, int noOfPages, int recordsPerPage) {
		this.noOfPages = noOfPages;
		this.noOfRecords = noOfRecoreds;
		this.recordsPerPage = recordsPerPage;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getNoOfRecords() {
		return noOfRecords;
	}

	public void setNoOfRecords(int noOfRecoreds) {
		this.noOfRecords = noOfRecoreds;
	}

	public int getNoOfPages() {
		return (int) Math.ceil(this.noOfRecords * 1.0 / this.recordsPerPage);
	}

	public void setNoOfPages(int noOfPages) {
		this.noOfPages = noOfPages;
	}

	public int getRecordsPerPage() {
		return recordsPerPage;
	}

	public void setRecordsPerPage(int recordsPerPage) {
		this.recordsPerPage = recordsPerPage;
	}

}
