package com.mughalsaraibazaar.main.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.dao.ProductCartDao;
import com.mughalsaraibazaar.main.model.ProductCartPage;

@Controller
public class ProductCart {

	@Autowired
	private ProductCartDao apd;
	
	@RequestMapping("cart")
	public void addProductCart(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		int psn = Integer.parseInt(req.getParameter("psn"));
		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");
		String count = req.getParameter("count");
		
		int isExit = apd.isProductExit(psn, mobile, password);
		
		if(isExit == 0) {
			
			/*Adding First Product Into Cart*/
			ProductCartPage addCart = apd.save(new ProductCartPage(psn, mobile, password, Integer.parseInt(count), LocalDateTime.now().toString()));
			if(addCart!=null) {
				
				res.sendRedirect("shoping-cart.jsp");
			}
			else {
				session.setAttribute("msg", "Something Went Wrong!!!");
				res.sendRedirect("shop-details.jsp");
			}
		}
		
		
		else {
			
			/*Updating Product With Previous Product*/
			
			int isUpdate = apd.updateCartProduct( Integer.parseInt(count),psn, mobile, password);
			if(isUpdate!=0) {
//				apd.updateCartProduct(Integer.parseInt(count), psn, mobile, password);
				res.sendRedirect("shoping-cart.jsp");
			}
			else {
				session.setAttribute("msg", "Something Went Wrong!!!");
				res.sendRedirect("shop-details.jsp");

			}
		}
	}
}
