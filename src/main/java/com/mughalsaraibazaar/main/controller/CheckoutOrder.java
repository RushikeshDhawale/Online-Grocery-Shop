package com.mughalsaraibazaar.main.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mughalsaraibazaar.main.dao.AddProductsDao;
import com.mughalsaraibazaar.main.dao.CheckoutOrderCustomerDetailsDao;
import com.mughalsaraibazaar.main.dao.PlacedOrderDao;
import com.mughalsaraibazaar.main.dao.ProductCartDao;
import com.mughalsaraibazaar.main.model.AddProductsPage;
import com.mughalsaraibazaar.main.model.CheckoutOrderCustomerDetailsPage;
import com.mughalsaraibazaar.main.model.PlacedOrderPage;
import com.mughalsaraibazaar.main.model.ProductCartPage;

@Controller
public class CheckoutOrder {

	@Autowired
	private CheckoutOrderCustomerDetailsDao cocd;
	@Autowired
	private ProductCartDao pcd;
	@Autowired
	private AddProductsDao apd;
	@Autowired
	private PlacedOrderDao pod;
	
	@RequestMapping("checkout")
	public void checkoutOrder(HttpServletRequest req, HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		
		String name = req.getParameter("name");
		String street = req.getParameter("street");
		String apartment = req.getParameter("apartment");
		String city = req.getParameter("city");
		String postcode = req.getParameter("postcode");
		String phone = req.getParameter("phone");
		String notes = req.getParameter("notes");
		String delivery = req.getParameter("delivery");
		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");
		
		/*
		 * //For Unique ID Creation
		 * 
		 * UUID uniqueID = UUID.randomUUID(); String numericID =
		 * uniqueID.toString().replaceAll("[^0-9]", ""); String orderID = "OID" +
		 * numericID;
		 */
        
        UUID uniqueID = UUID.randomUUID();

        // Get the least significant bits of the UUID
        long leastSignificantBits = uniqueID.getLeastSignificantBits();

        // Ensure the value is positive by applying bitwise AND with a mask
        long positiveValue = leastSignificantBits & Long.MAX_VALUE;

       // Convert the positive value to a string and take the last 11 digits
        String numericID = String.format("%011d", positiveValue % 100000000000L);

        String orderID = "OID" + numericID;

        
        
        
        
        String date = LocalDateTime.now().toString();

		CheckoutOrderCustomerDetailsPage order = cocd.save(new CheckoutOrderCustomerDetailsPage(name, street, apartment, city, postcode, phone, notes, delivery, mobile, password, orderID, date, "No"));
		
		if(order!=null) {
			
			List<ProductCartPage> list = pcd.getCart(mobile, password);
			for(ProductCartPage cp:list) {
				
				int psn = cp.getPsn();
				int count = cp.getCount();
				
				Optional<AddProductsPage> product_deatils = apd.findById(psn);
				AddProductsPage pp = product_deatils.get();
				
				PlacedOrderPage pop = pod.save(new PlacedOrderPage(psn, count, pp.getTitle(), pp.getDescription(), pp.getCrossprice(), pp.getMainprice(), pp.getAvailability(), pp.getDepartment(), pp.getCategory(), pp.getProductImage(), mobile, password, orderID, date));
				//For Successfully Placed Order Data Remove From The Cart
				if(pop!=null) {
					pcd.removeFromCart(mobile, password);
				}
			}
			session.setAttribute("msg", "Order Placed Succesfully!!!");
			res.sendRedirect("shoping-cart.jsp");
			
		}
		else {
			session.setAttribute("msg", "Something Went Wrong!!!");
			res.sendRedirect("shoping-cart.jsp");
		}
	}
	
	@RequestMapping("delivered")
	public void deliveredProduct(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		String sn = req.getParameter("sn");
		
		int status = cocd.changeDeliveryStatus(Integer.parseInt(sn));
		if(status == 1) {
			
			session.setAttribute("msg", "Delivered");
			res.sendRedirect("order.jsp");
		}
		
		else {
			session.setAttribute("msg", "Something Went Wrong");
			res.sendRedirect("order.jsp");
		}
		
		
	}
}































