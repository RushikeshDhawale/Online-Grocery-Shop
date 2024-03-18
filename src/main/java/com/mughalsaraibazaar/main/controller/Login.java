package com.mughalsaraibazaar.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.ApplicationContextClass;
import com.mughalsaraibazaar.main.dao.LoginDao;
import com.mughalsaraibazaar.main.model.LoginPage;
import com.mughalsaraibazaar.main.validation.DataValidation;


@Controller
public class Login {

	@Autowired
	private LoginDao loginDao;
	
    @RequestMapping("login")
    public void login(HttpServletRequest req, HttpServletResponse res) throws IOException {
        HttpSession session = req.getSession();

        String username = req.getParameter("username");
        String password = req.getParameter("password");

       
        List<LoginPage> rows = loginDao.read(username, password);

        if (rows != null && !rows.isEmpty()) {
            // Login successful
            session.setAttribute("login", "Login Successfully!!!");
            res.sendRedirect("admin.jsp");
        } else {
            // Invalid credentials
            session.setAttribute("msg", "Invalid username or password");
            res.sendRedirect("login.jsp");
        }
    }
    
    @RequestMapping("updatecredentials")
    public void updatePassword(HttpServletRequest req, HttpServletResponse res) throws IOException {
    	
    	HttpSession session = req.getSession();

        String nuser = req.getParameter("nuser");
        String ruser = req.getParameter("ruser");
        String npass = req.getParameter("npass");
        String rpass = req.getParameter("rpass");
        
        if(nuser.equals(ruser) && npass.equals(rpass)) {
        
        String result = new DataValidation().validCrediantials(nuser,ruser,npass,rpass);
        if(result.equals("Valid")) {
        	
        	int rows = loginDao.updateCredentials(ruser, rpass);
        	if(rows == 1) {
        		session.setAttribute("msg", "Updated!!!");
            	res.sendRedirect("changepassword.jsp");
        	}
        	else {
        		session.setAttribute("msg", result);
            	res.sendRedirect("changepassword.jsp");
        	}
        }
        else {
        	session.setAttribute("msg", "Username or Password Missmatch");
        	res.sendRedirect("changepassword.jsp");
        }
        }
    }
    
    @RequestMapping("logout")
    public void logout(HttpServletRequest req, HttpServletResponse res) throws IOException {
    	
    	
    	HttpSession session = req.getSession();
    	session.removeAttribute("login");
    	res.sendRedirect("login.jsp");
    }
}
