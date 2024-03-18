package com.mughalsaraibazaar.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.dao.CheckoutOrderCustomerDetailsDao;
import com.mughalsaraibazaar.main.dao.PlacedOrderDao;

@Controller
public class OrderCancellation {

	@Autowired
	private PlacedOrderDao pd;
	@Autowired
	private CheckoutOrderCustomerDetailsDao cocd;
	
	private int rows;
	
	@RequestMapping("cancelorder")
	public void cancleOrder(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		/*
		 * int sn = Integer.parseInt(req.getParameter("sn"));
		 */		
		String sn = req.getParameter("sn");
		int psn = Integer.parseInt(sn);
		String orderid = req.getParameter("orderid");
		
		rows = pd.deleteOrder(psn);
		if(rows == 1) {
			
			int count = pd.orderCount(orderid);
			if(count == 0) {
				
				 rows = cocd.deleteCustomerOrderDeatils(orderid);
				 if(rows == 1) {
					 session.setAttribute("msg","Order Canceled");
					 res.sendRedirect("orderhistory.jsp");
				 }
				 else {
					    session.setAttribute("msg", "Something Went Wrong");
						res.sendRedirect("orderhistory.jsp");
   
				 }
			}
			else {
				session.setAttribute("msg", "Order Canceled");
				res.sendRedirect("orderhistory.jsp");
			}
			
			
		}
		else {
			session.setAttribute("msg", "Something Went Wrong");
			res.sendRedirect("orderhistory.jsp");
		}
		
	}
}
