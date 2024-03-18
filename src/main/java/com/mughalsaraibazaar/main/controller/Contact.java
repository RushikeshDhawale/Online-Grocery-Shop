package com.mughalsaraibazaar.main.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.ApplicationContextClass;
import com.mughalsaraibazaar.main.dao.ContactDao;
import com.mughalsaraibazaar.main.validation.DataValidation;

@Controller
public class Contact {

	private String result;
	@RequestMapping("contact")
	public void sendMessage(HttpServletRequest req, HttpServletResponse res ) throws IOException{
		
		HttpSession session = req.getSession();
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String message = req.getParameter("message");
		
		result = new DataValidation().contactValid(name, email, message);
		if(result.equals("Valid")) {
			
			ApplicationContext ac = ApplicationContextClass.getApplicationContext();
			ContactDao bean = ac.getBean(ContactDao.class);
			int rows = bean.insert(name, email, message, LocalDateTime.now().toString());
			
			if(rows == 1) {
				session.setAttribute("msg", "Message Send Successfully!!!");
				res.sendRedirect("contact.jsp");
			}
			else {
				session.setAttribute("msg", "Message Send Failed!!!");
				res.sendRedirect("contact.jsp");
			}
			

		}
		else {
			session.setAttribute("msg",result);
			res.sendRedirect("contact.jsp");
			
		}
		
		
	}
	
	@RequestMapping("deletecontact")
	public void deleteMessage(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		String sn = req.getParameter("sn");
		
		ApplicationContext ac = ApplicationContextClass.getApplicationContext();
		ContactDao bean = ac.getBean(ContactDao.class);
		int rows = bean.deleteContact(Integer.parseInt(sn));
		System.out.println(rows);
		
		if(rows == 1) {
			session.setAttribute("msg", "Message Deleted!!!");
			res.sendRedirect("read-contect.jsp");
		}
		else {
			session.setAttribute("msg", "Something Went Wrong!!!");
			res.sendRedirect("read-contect.jsp");

		}
		
	}
}
