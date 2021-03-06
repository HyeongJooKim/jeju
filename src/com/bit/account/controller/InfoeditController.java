package com.bit.account.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.account.model.MemberDao;
import com.bit.account.model.MemberDto;

@WebServlet("/mypage/infoedit.bit")
public class InfoeditController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setHeader("Cache-Control", "no-store");
		
		MemberDto dto = (MemberDto) req.getSession().getAttribute("user");
		try {
			dto = new MemberDao().selectMemeber(dto.getId());
			req.setAttribute("user_info", dto);
		} catch(NullPointerException e) {
			resp.sendRedirect("/jeju/login.bit");
			return;
		}
		String type = req.getParameter("type");
		req.getRequestDispatcher("/infoedit.jsp?type=" + type).forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String type = req.getParameter("type");
		String data = req.getParameter("data");
		HttpSession session = req.getSession();
		String id = ((MemberDto) session.getAttribute("user")).getId();
		int result = new MemberDao().editMember(id, type, data);
		System.out.println("result : " + result);
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		PrintWriter out = resp.getWriter();
		if(result == 0) {
			out.print("edit fail");
		} else {
			if(type.equals("name")) {
				session.removeAttribute("user");
				session.setAttribute("user", new MemberDao().selectMemeber(id));
			}
			out.print("edit success");
		}
	}
}
