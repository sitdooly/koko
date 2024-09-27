package com.mbc.lhr04_1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class HomeController {
	String imgpath = "C:\\mbc6\\spring\\day04_book\\src\\main\\webapp\\image";
	@Autowired
	SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/bookinput")
	public String bookinput() {
		return "bookinput";
	}
	
	@RequestMapping(value = "/booksave", method = RequestMethod.POST)
	public String booksave(MultipartHttpServletRequest mul) throws IllegalStateException, IOException {
		String bname = mul.getParameter("bname");
		String bwriter = mul.getParameter("bwriter");
		int bprice = Integer.parseInt(mul.getParameter("bprice"));
		String bdate = mul.getParameter("bdate");
		String bcontent = mul.getParameter("bcontent");
		MultipartFile fm = mul.getFile("bimage");
		String fname = fm.getOriginalFilename();
		Service ss = sqlSession.getMapper(Service.class);
		fm.transferTo(new File(imgpath+"\\"+fname));
		ss.insertImg(bname,bwriter,bprice,bdate,bcontent,fname);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/bookout")
	public String bookout(Model model) {
		Service ss = sqlSession.getMapper(Service.class);
		ArrayList<BookDTO> list = ss.bookout();
		model.addAttribute("list", list);
		return "bookout";
	}
	
	@RequestMapping(value = "/bookdelete")
	public String deletechk(HttpServletRequest request, Model model) {
		String id = request.getParameter("num");
		Service ss = sqlSession.getMapper(Service.class);
		BookDTO dto = ss.selectchk(id);
		model.addAttribute("dto", dto);
		return "deletechk";
	}
	
	@RequestMapping(value = "/realdelete")
	public String delete(HttpServletRequest request, Model model) {
		String id = request.getParameter("num");
		String image = request.getParameter("image");
		File img = new File(imgpath + "\\" + image);
		logger.info(image);
		img.delete();
		Service ss = sqlSession.getMapper(Service.class);
		ss.realdelete(id);
		return "redirect:/bookout";
	}
	
	@RequestMapping(value = "/bookupdate")
	public String updatechk(HttpServletRequest request, Model model) {
		String id = request.getParameter("num");
		Service ss = sqlSession.getMapper(Service.class);
		BookDTO dto = ss.selectchk(id);
		model.addAttribute("dto", dto);
		return "bookupdate";
	}

	@RequestMapping(value = "/realupdate", method = RequestMethod.POST)
	public String update(MultipartHttpServletRequest mul) throws IllegalStateException, IOException {
		int num = Integer.parseInt(mul.getParameter("bnumber"));
		String bname = mul.getParameter("bname");
		String bwriter = mul.getParameter("bwriter");
		int bprice = Integer.parseInt(mul.getParameter("bprice"));
		String bdate = mul.getParameter("bdate");
		String bcontent = mul.getParameter("bcontent");
		MultipartFile fm2 = mul.getFile("bimage");
		String fname = fm2.getOriginalFilename();
		int breadcnt = Integer.parseInt(mul.getParameter("breadcnt"));
		Service ss = sqlSession.getMapper(Service.class);
		fm2.transferTo(new File(imgpath+"\\"+fname));
		ss.realupdate(num,bname,bwriter,bprice,bdate,bcontent,fname);
		return "redirect:/bookout";
	}
	
	@RequestMapping(value = "/bookdetail")
	public String detail(HttpServletRequest request, Model model) {
		String id = request.getParameter("num");
		Service ss = sqlSession.getMapper(Service.class);
		BookDTO dto = ss.selectchk(id);
		model.addAttribute("dto", dto);
		ss.readcnt(id);
		return "bookdetail";
	}
	
	@RequestMapping(value = "/searchsave")
	public String booksearch(HttpServletRequest request, Model model) {
		String key = request.getParameter("key");
		String sval = request.getParameter("svalue");
		String voca = null;
		Service ss = sqlSession.getMapper(Service.class);
		ArrayList<BookDTO> list = ss.search(key, sval);
		BookDTO dto = new BookDTO();
		if(key.equals("bname")) voca = "도서명";
		else  voca = "저자명";
		dto.setKey(voca);
		dto.setSval(sval);
		model.addAttribute("list", list);
		model.addAttribute("dto", dto);
		return "searchdetail";
	}
}