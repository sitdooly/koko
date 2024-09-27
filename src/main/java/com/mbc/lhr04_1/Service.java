package com.mbc.lhr04_1;

import java.util.ArrayList;

public interface Service {
	public void insertImg(String bname, String bwriter, int bprice, String bdate, String bcontent, String fname);
	public ArrayList<BookDTO> bookout();
	public BookDTO selectchk(String id);
	public void realdelete(String id);
	public void realupdate(int num, String bname, String bwriter, int bprice, String bdate, String bcontent, String fname);
	public void readcnt(String id);
	public ArrayList<BookDTO> search(String key, String sval);
}