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


public class listResCon extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1516032983939079694L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Test");
		request.setCharacterEncoding("UTF-8");
		//사용자에게 동구,남구 등 지역을 입력받는다.
		String raddr = request.getParameter("raddr");
		//사용자가 선택한 지역별 맛집 목록들에 띄우기 위해 db에서 이름과 사진을 가져온다.
		System.out.println(raddr);
		ResDAO dao = new ResDAO();
		
		
		List<ResDTO> list = new ArrayList<>();
		list =  dao.listLoc(raddr);
		System.out.println(list.size());
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getRes_name());
		}
		
		request.setAttribute("list", list);
		//로그인 성공/실패 상관없이 무조건 메인으로 이동
		RequestDispatcher rd = request.getRequestDispatcher("rest.jsp");
		rd.forward(request, response);
		
		
		
	}

}

	
	
	
	
	

