package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewDTO;

/**
 * Servlet implementation class reviewWriteCon
 */
public class reviewWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
	 
	      
	      String saveDir =request.getServletContext().getRealPath("images");
	      //15MB 제한
	      int maxSize = 5 * 1024 * 1024;
	      String encoding = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
	      String reviewer_name = multi.getParameter("name");
	      String receipt_img = URLEncoder.encode(multi.getFilesystemName("profile"), "UTF-8");
	      String review_content = multi.getParameter("commentent");

	     BigDecimal resNum = new BigDecimal(Integer.valueOf(multi.getParameter("resNum")));
	   
	      
	      reviewDTO review_dto = new reviewDTO(reviewer_name, receipt_img, review_content, resNum);
	      
	     
	      int cnt = new reviewDAO().insertReview(review_dto);
	      
	      if(cnt>0) {
	    	  System.out.println("리뷰 입력 성공");
	      }else {
	    	  System.out.println("리뷰 입력 실패");
	      }
	      
	      
	      String data = request.getParameter("index");
	      String rName = request.getParameter("res_name");
	      
//	      System.out.println("TestTes  "+rName);
//	      String str = new String(rName);
//		  String rName2 = new String(str.getBytes("utf-8"), "euc-kr");
	      
	      response.setContentType("text/plain; charset=utf-8;");
	      
	      response.sendRedirect("./RestaurantInfo.jsp?index="+data+"&res_name="+rName);
	
	}
	
	

}
