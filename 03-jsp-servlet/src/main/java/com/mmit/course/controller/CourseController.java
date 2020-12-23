package com.mmit.course.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmit.course.model.Course;

@WebServlet("/save-course")
public class CourseController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//get request parameter
		
		String name = req.getParameter("name");
		String level = req.getParameter("level");
		String fees = req.getParameter("fees");
		
		//create course project
		
		Course newcourse = new Course();
		newcourse.setName(name);
		newcourse.setLevel(level);
		newcourse.setFees(Integer.parseInt(fees));
		
		//get sessionobject
		HttpSession session = req.getSession(true);
		List<Course> list = (List<Course>) session.getAttribute("courses");
		if (list == null) {
			list = new ArrayList<Course>();
		}
		list.add(newcourse);
		
		//add course project to session
		session.setAttribute("courses", list );		
		
		//invoke other web resource to display course list
		//getServletContext().getRequestDispatcher("/course-list.jsp").forward(req, resp);
		
		resp.sendRedirect(req.getContextPath().concat("/course-list.jsp"));
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}
