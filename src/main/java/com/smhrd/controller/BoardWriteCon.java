package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardWriteCon extends HttpServlet {
   

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      
      
      String saveDir =request.getServletContext().getRealPath("img");
      //15MB 제한
      int maxSize = 5 * 1024 * 1024;
      String encoding = "UTF-8";
      
      //form (multipart/form-data)
      MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
      String reviewer_name = multi.getParameter("reviewer_name");
      String review_content = URLEncoder.encode(multi.getFilesystemName("review_content"), "UTF-8");
      String receipt_img = multi.getParameter("receipt_img");
      String review_name = multi.getParameter("review_name");
      
      BoardDTO b_vo = new BoardDTO(reviewer_name,review_content,receipt_img,review_name);
      
      BoardDAO dao = new BoardDAO();
      int cnt = dao.insertBoard(b_vo);
      
      if (cnt > 0) {
         System.out.println("삽입성공");
      }else {
         System.out.println("삽입실패");
      }
      //main.jsp 로 이동
      //(redirect -단순이동,
      //forwarding - request 영역 값 저장,클라이언트에서 어디로 이동했는지 모르게 하고 싶을 때)
      response.sendRedirect("RestaurantInfo.jsp");
   }

}