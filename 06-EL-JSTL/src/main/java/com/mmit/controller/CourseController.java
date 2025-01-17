package com.mmit.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmit.entity.Course;

@WebServlet("/add-course")
public class CourseController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("title", "addcourse");
		getServletContext().getRequestDispatcher("/course-add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//get parameter data
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String level = req.getParameter("level");
		String duration = req.getParameter("duration");
		String startdate = req.getParameter("startdate");
		
		
		//create course obj
		Course c = new Course();
		c.setName(name);
		c.setPrice(Integer.parseInt(price));
		c.setLevel(level);
		c.setDuration(Integer.parseInt(duration));
		c.setStartdate(LocalDate.parse(startdate));
		
		//get Session obj
		HttpSession session = req.getSession(true);
		List<Course> list = (ArrayList<Course>) session.getAttribute("courselist");
		if (list == null) {
			list = new ArrayList<Course>();
		}
		
		//add new course obj to list
		list.add(c);
		
		//add course obj to session
		session.setAttribute("courselist", list);
		
		//invoke other web page
		resp.sendRedirect(req.getContextPath());
		
	}

}
