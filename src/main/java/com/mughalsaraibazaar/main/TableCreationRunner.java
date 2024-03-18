package com.mughalsaraibazaar.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.mughalsaraibazaar.main.dao.LoginDao;

@Component
public class TableCreationRunner implements CommandLineRunner {

	@Autowired
	private LoginDao loginDao;

	@Override
	public void run(String... args) throws Exception {

		long count = loginDao.count();
		if (count == 0) {
			int setAuth = this.loginDao.insertDefaultCred("admin", "admin");

		}

	}
}