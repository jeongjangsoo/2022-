package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ResDTO;

/**
 * Servlet implementation class ResInfo
 */
public class ResInfoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ResDTO dto = new ResDTO();
		dto.setRes_name("돈부리바쇼 유메노덴");
		dto.setRes_runtime("10:00~17:00");
		
		request.setAttribute("info", dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("RestaurantInfo.jsp");
		rd.forward(request, response);
		
		
		
	}

}
