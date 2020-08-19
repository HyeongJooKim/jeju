package com.bit.lms_notice.controller;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.lms_notice.model.NtcDao;
import com.bit.lms_notice.model.NtcDto;



@WebServlet("/lms/ntc.bit")
public class NtcController extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			NtcDao dao=new NtcDao();
			ArrayList<NtcDto> list = dao.selectAll();
//			���߿��� ��Ͽ��� Ŭ���ؼ� �ѱ�� �� �޾Ƽ� �־�� ��
			request.setAttribute("list",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/ntc.jsp").forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
