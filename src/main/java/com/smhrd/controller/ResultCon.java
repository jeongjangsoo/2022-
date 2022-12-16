package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ResDAO;
import com.smhrd.model.ResDTO;
import com.smhrd.model.ResultDAO;
import com.smhrd.model.ResultSetDTO;




public class ResultCon extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1207375059866359961L;

	/**
	 * 
	 */

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// jsp에서 받는 파라미터
		String loc = request.getParameter("loc");//동구,광산구...
		String like = request.getParameter("like");//한식, 중식...
	
	
		System.out.println("1== : "+loc);
		System.out.println("2== : "+like);
	
		ResultDAO dao = new ResultDAO();		
				
		List<ResultSetDTO> resInfo = dao.resultInfo(loc, like);
		
		request.setAttribute("resDto", resInfo);
		request.setAttribute("location", loc);
		request.setAttribute("kindFood", like);
	
		//로그인 성공/실패 상관없이 무조건 메인으로 이동
		RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		rd.forward(request, response);
		
		
		
	}

}

	
	
	
	
	

