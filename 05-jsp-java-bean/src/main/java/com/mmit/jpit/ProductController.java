package com.mmit.jpit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-product")
public class ProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Product p = (Product) req.getAttribute("product");
		System.out.println("-------------------New Product-------------------");
		System.out.println("Name = " + p.getName() + "\n" + "Category Name = " + p.getCategoryName() + "\n" + "Price = " + p.getPrice());
		
		resp.getWriter().print("Name = " + p.getName() + "<br>" + "Category Name = " + p.getCategoryName() + "<br>" + "Price = " + p.getPrice());
	}
}
