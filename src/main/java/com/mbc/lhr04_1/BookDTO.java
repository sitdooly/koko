package com.mbc.lhr04_1;
public class BookDTO {
	int bnumber;
	String bname, bwriter;
	int bprice;
	String bdate, bcontent, bimage;
	int breadcnt;
	String key, sval;

	public BookDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookDTO(int bnumber, String bname, String bwriter, int bprice, String bdate, String bcontent, String bimage,
			int breadcnt) {
		super();
		this.bnumber = bnumber;
		this.bname = bname;
		this.bwriter = bwriter;
		this.bprice = bprice;
		this.bdate = bdate;
		this.bcontent = bcontent;
		this.bimage = bimage;
		this.breadcnt = breadcnt;
	}

	public int getBnumber() {
		return bnumber;
	}
	public void setBnumber(int bnumber) {
		this.bnumber = bnumber;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public int getBprice() {
		return bprice;
	}
	public void setBprice(int bprice) {
		this.bprice = bprice;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public int getBreadcnt() {
		return breadcnt;
	}
	public void setBreadcnt(int breadcnt) {
		this.breadcnt = breadcnt;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getSval() {
		return sval;
	}
	public void setSval(String sval) {
		this.sval = sval;
	}
}