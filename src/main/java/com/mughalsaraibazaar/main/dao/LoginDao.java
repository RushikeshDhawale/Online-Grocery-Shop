package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.LoginPage;

public interface LoginDao extends CrudRepository<LoginPage, Integer> {
	
//	@Query(value = "select from login where username=:username and password=:password", nativeQuery = true)
//	ArrayList<LoginPage> read(@Param("username") String username,@Param("password") String password);
//

	@Override
	public long count();
	
	@Transactional
	@Modifying
	@Query(value = "insert into adminlogin(username,password) values(:username,:password)",nativeQuery = true)
	public int insertDefaultCred(@Param("username")String username,@Param("password")String password);
	
	@Query(value = "select * from adminlogin where username=:username and password=:password", nativeQuery = true)
	public List<LoginPage> read(@Param("username") String username, @Param("password") String password);
	
	@Modifying
	@Transactional
	@Query(value = "update adminlogin set username=:username , password=:password where id=1",nativeQuery = true)
	public int updateCredentials(@Param("username") String username, @Param("password") String password);

}
