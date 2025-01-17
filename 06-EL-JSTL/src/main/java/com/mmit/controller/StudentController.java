package com.mmit.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mmit.entity.Student;

@MultipartConfig
@WebServlet(urlPatterns = {"/studentlist", "/add-student"})
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = req.getServletPath();
		System.out.println(path);
		if(path.equals("/studentlist"))
		{
			req.setAttribute("title", "studentlist");
			getServletContext().getRequestDispatcher("/student.jsp").forward(req, resp);
		}else {
			req.setAttribute("title", "addstudent");
			getServletContext().getRequestDispatcher("/student-add.jsp").forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//get parameter data
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		Part imgPart = req.getPart("profile");
		String age = req.getParameter("age");
		String year = req.getParameter("year");
		String address = req.getParameter("address");
		String dob = req.getParameter("dob");
		
		String imgName = imgPart.getSubmittedFileName();
		String currentName = imgName.substring(0, imgName.lastIndexOf("."));
		String tmpName = currentName + System.currentTimeMillis();
		imgName = imgName.replace(currentName, tmpName);
		
		//create student obj
		Student s = new Student();
		s.setName(name);
		s.setEmail(email);
		s.setAge(Integer.parseInt(age));
		s.setYear(year);
		s.setAddress(address);
		s.setDateofbirth(LocalDate.parse(dob));
		s.setProfile(imgName);
		
		//save client upload file in server
		String rootPath = getServletContext().getRealPath("");
		String dirPath = rootPath + File.separator + "studentImg";
		File rootDir = new File(dirPath); //check already exits imgUploads folder
		if (!rootDir.exists()) {
			rootDir.mkdir(); //making new folder 
		}
		System.out.println("Path = " + rootPath);
		System.out.println("Dir = " + rootDir);
		
		imgPart.write(rootDir + File.separator + imgName);
		
		
		//get Session obj
		HttpSession session = req.getSession(true);
		List<Student> list = (ArrayList<Student>) session.getAttribute("studentlist");
		if (list == null) {
			list = new ArrayList<Student>();
		}
		
		//add new student to list
		list.add(s);
		
		//add student obj to session
		session.setAttribute("studentlist", list);
		
		//invoke other web page
		getServletContext().getRequestDispatcher("/student.jsp").forward(req, resp);
		
		
		
	}
}
