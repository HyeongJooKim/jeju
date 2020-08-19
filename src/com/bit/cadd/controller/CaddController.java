package com.bit.cadd.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.cadd.model.CaddDao;

@WebServlet("/cadd.bit")
public class CaddController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("cadd.jsp");
		rd.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String ctitle = req.getParameter("ctitle").trim();
		String cbegin = req.getParameter("cbegin");
		String cend = req.getParameter("cend");	
		int croom = Integer.parseInt(req.getParameter("croom"));
		int prof =  Integer.parseInt(req.getParameter("prof"));
		int salesno = Integer.parseInt(req.getParameter("salesno"));

		try {
			CaddDao dao = new CaddDao();
			dao.insertOne(ctitle, cbegin, cend, croom, prof, salesno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("courses.bit");
	}
}