package com.mughalsaraibazaar.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.UserSingupPage;

public interface UserSignupDao extends JpaRepository<UserSingupPage, Integer> {
	
	
	@Query(value = "select count(*) as count from usersignup where mobile=:mobile",nativeQuery = true)
	public int isUserExit(@Param("mobile")String mobile);
	
	@Override
	public <S extends UserSingupPage> S save(S entity) ;
	
	@Query(value = "select count(*) as count from usersignup where mobile=:mobile and password=:password",nativeQuery = true)
	public int userLogin(@Param("mobile")String mobile, @Param("password")String password);
	
}
