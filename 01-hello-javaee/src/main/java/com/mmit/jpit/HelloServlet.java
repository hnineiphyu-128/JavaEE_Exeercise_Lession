package com.mmit.jpit;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@webServlet("/hello")
@WebServlet(urlPatterns = {"/hello","/home"})
public class HelloServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter p = resp.getWriter();
		p.write("<h1> Hello Servlet </h1>");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter writer = resp.getWriter();
		writer.append("<h1> Hello From Servlet </h1>");
		writer.append("<input value='MMIT' /></br>");
		writer.append("<a href='index.html'> Go To Home </a>");
		writer.append("Current Date : " + LocalDate.now());
	}

}
