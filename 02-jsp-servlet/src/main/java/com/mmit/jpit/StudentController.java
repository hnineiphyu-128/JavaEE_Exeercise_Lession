package com.mmit.jpit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/register"})
public class StudentController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String age = req.getParameter("age");
		String phone = req.getParameter("phone");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		
//		System.out.println("Student's Name is "+ name +" Student's age is "+ age);
		
//		PrintWriter writer = resp.getWriter();
//		writer.append("Student's Name is " + name ).append("And his Age is " + age).flush();
		
		getServletContext().getRequestDispatcher("/display.jsp").forward(req, resp);
	}

}
