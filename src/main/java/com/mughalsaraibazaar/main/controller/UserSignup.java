package com.mughalsaraibazaar.main.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.dao.UserSignupDao;
import com.mughalsaraibazaar.main.model.UserSingupPage;

@Controller
public class UserSignup {

	@Autowired
	private UserSignupDao usd;

	@RequestMapping("usersignup")
	public void register(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String fullname = req.getParameter("fullname");
		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");
		String cpassword = req.getParameter("confirmpassword");

		if (password.equals(cpassword)) {

			int exit = usd.isUserExit(mobile);

			if (exit == 0) {
				UserSingupPage usm = usd.save(
						new UserSingupPage(fullname, mobile, password, cpassword, LocalDateTime.now().toString()));
				if (usm != null) {

					ArrayList<String> list = new ArrayList<>();
					list.add(mobile);
					list.add(password);

					session.setAttribute("userdata", list);
					session.setAttribute("msg", "Signup Sucessfully!!!");
					res.sendRedirect("index.jsp");

				} else {

					session.setAttribute("msg", "Something Went Wrong!!!");
					res.sendRedirect("usersignup.jsp");
				}

			} else {
				session.setAttribute("msg", "User Already Exit!!!");
				res.sendRedirect("index.jsp");
			}
		}

		else {
			session.setAttribute("msg", "Password Missmatch!!!");
			res.sendRedirect("usersignup.jsp");
		}

	}

	@RequestMapping("userlogin")
	public void userLogin(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");

		ArrayList<String> al = new ArrayList<>();
		al.add(mobile);
		al.add(password);

		int login = usd.userLogin(mobile, password);
		if (login == 0) {
			session.setAttribute("msg", "Invalid Credentials");
			res.sendRedirect("index.jsp");
		} else {
			session.setAttribute("userlogin", al);
			res.sendRedirect("home.jsp");
		}

	}

	@RequestMapping("userlogout")
	public void userLogout(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		session.removeAttribute("userlogin");
		res.sendRedirect("index.jsp");

	}

}
