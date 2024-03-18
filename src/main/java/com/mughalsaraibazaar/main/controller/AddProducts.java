package com.mughalsaraibazaar.main.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mughalsaraibazaar.main.ApplicationContextClass;
import com.mughalsaraibazaar.main.dao.AddProductsDao;
import com.mughalsaraibazaar.main.fileio.addProductIo;
import com.mughalsaraibazaar.main.model.AddProductsPage;

@Controller
public class AddProducts {

	@Autowired
	private AddProductsDao apd;
	
	@RequestMapping("addproducts")
	public void addProducts(HttpServletRequest req, HttpServletResponse res,
			@RequestParam("productimage") MultipartFile f) throws IOException, ServletException {

		HttpSession session = req.getSession();

		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String crossprice = req.getParameter("crossprice");
		String mainprice = req.getParameter("mainprice");
		String availability = req.getParameter("availability");
		String department = req.getParameter("department");
		String category = req.getParameter("category");
//		Part part = req.getPart("productimage");
//
//		String fileName = part.getSubmittedFileName();
//		System.out.println(fileName);
		String fileName = f.getOriginalFilename();

		String dateTime = LocalDateTime.now().toString();

		String reFileName = dateTime+fileName;
		String[] split = reFileName.split(":");
		String finalFileName = split[0] + split[1] + split[2];

		ApplicationContext ac = ApplicationContextClass.getApplicationContext();
		AddProductsDao bean = ac.getBean(AddProductsDao.class);
		AddProductsPage apd = bean.save(new AddProductsPage(title, description, crossprice, mainprice, availability,
				department, category, finalFileName, dateTime));

		if (apd != null) {

			// Here we are taking real path for storing real time data into client machine
			String realPath = req.getServletContext().getRealPath("img/productsFile") + File.separator + finalFileName;

			String savedFile = new addProductIo().writeProduct(realPath, finalFileName, f);
			if (savedFile.equals("Saved")) {

				session.setAttribute("msg", "Product Added Successfully!!!");
				res.sendRedirect("addproduct.jsp");

			} else {

				session.setAttribute("msg", "Something Went Wrong");
				res.sendRedirect("addproduct.jsp");

			}

		} else {
			session.setAttribute("msg", "Wrong");
			res.sendRedirect("addproduct.jsp");

		}
		
		
	}
	
	@RequestMapping("deleteproduct")
	public void deleteProduct(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		String sn = req.getParameter("sn");
		String photoname = req.getParameter("photoname");
		
		apd.deleteById(Integer.parseInt(sn));
		String realPath = req.getServletContext().getRealPath("img/productsFile")+File.separator+photoname;
		
		new File(realPath).delete();
		
		session.setAttribute("msg", "Product Deleted!!!");
		res.sendRedirect("adminreadproduct.jsp");
		
	}
	
	@RequestMapping("updateproduct")
	public void updateProduct(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		
		String sn = req.getParameter("sn");
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String crossprice = req.getParameter("crossprice");
		String mainprice = req.getParameter("mainprice");
		String availability = req.getParameter("availability");
		
		int result = apd.updateProduct(title, description, crossprice, mainprice, availability, Integer.parseInt(sn));
		if(result == 1) {
			
			session.setAttribute("msg", "Product Updated!!!");
			res.sendRedirect("adminreadproduct.jsp");
		}
		
		else {
			session.setAttribute("msg", "Something Went Wrong");
			res.sendRedirect("updateproduct.jsp");
		}
				
	}
}
