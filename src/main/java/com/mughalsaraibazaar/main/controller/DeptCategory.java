package com.mughalsaraibazaar.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.ApplicationContextClass;
import com.mughalsaraibazaar.main.dao.DeptCatDao;

@Controller
public class DeptCategory {

	@RequestMapping("addcategory")
	public void addDeptCat(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		String department = req.getParameter("department");
		String category = req.getParameter("category");
		
		ApplicationContext ac = ApplicationContextClass.getApplicationContext();
		DeptCatDao bean = ac.getBean(DeptCatDao.class);
		int rows = bean.insert(department, category);
		if(rows == 1) {
			session.setAttribute("msg", "Category Added!!!");
			res.sendRedirect("addcategory.jsp");
		}
		else {
			session.setAttribute("msg", "Wrong!!!");
			res.sendRedirect("addcategory.jsp");
		}
		
		
		
		
	}
}
