package com.mughalsaraibazaar.main;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.mughalsaraibazaar.main.dao.AddProductsDao;
import com.mughalsaraibazaar.main.model.AddProductsPage;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext ac = SpringApplication.run(Application.class, args);
		AddProductsDao bean = ac.getBean(AddProductsDao.class);
		List<AddProductsPage> list = bean.findAllProducts(0);
		System.out.println(list.size());
		System.out.println("Application Started!!!");
	}

}
