package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.PlacedOrderPage;

public interface PlacedOrderDao extends JpaRepository<PlacedOrderPage, Integer> {
	
	@Override
	public <S extends PlacedOrderPage> S save(S entity);
	
	
	@Query(value = "select * from placeorder where orderid = :orderid", nativeQuery = true)
	public List<PlacedOrderPage> readOrder(String orderid);
	
	@Override
	public List<PlacedOrderPage> findAll() ;
	
	@Modifying
	@Transactional
	@Query(value = "delete from placeorder where sn=:sn",nativeQuery = true)
	public int deleteOrder(@Param("sn")int sn);

	@Query(value = "select count(*) as count from placeorder where  orderid=:orderid",nativeQuery = true)
	public int orderCount(@Param("orderid")String orderid);
}
