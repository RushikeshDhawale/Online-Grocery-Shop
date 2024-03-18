package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.ProductCartPage;

public interface ProductCartDao extends JpaRepository<ProductCartPage, Integer> {

	
	@Query(value = "select count(*) as count from cart where psn=:psn and mobile=:mobile and password=:password",nativeQuery = true)
	public int isProductExit(@Param("psn")int psn,@Param("mobile")String mobile,@Param("password")String password);
	
	@Override
	public <S extends ProductCartPage> S save(S entity);
	
	@Modifying
	@Transactional
	@Query(value = "update cart set count=count+:count where psn=:psn and mobile=:mobile and password=:password",nativeQuery = true)
	public int updateCartProduct(@Param("count") int count, @Param("psn") int psn, @Param("mobile")String mobile,@Param("password")String password);
	
	@Query(value = "select count(*) as count from cart where mobile=:mobile and password=:password",nativeQuery = true)
	public int cartCount(@Param("mobile")String mobile,@Param("password")String password);
	
	@Query(value = "select * from cart where mobile=:mobile and password=:password",nativeQuery = true)
	public List<ProductCartPage> getCart(@Param("mobile") String mobile, @Param("password") String password);
	
	@Modifying
	@Transactional
	@Query(value = "delete  from cart where mobile=:mobile and password=:password",nativeQuery = true)
	public int removeFromCart(@Param("mobile") String mobile, @Param("password") String password);
	
	
}
