package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.CheckoutOrderCustomerDetailsPage;

public interface CheckoutOrderCustomerDetailsDao extends JpaRepository<CheckoutOrderCustomerDetailsPage, Integer> {

	@Override
	public <S extends CheckoutOrderCustomerDetailsPage> S save(S entity);

	@Override
	public List<CheckoutOrderCustomerDetailsPage> findAll() ;
	
	@Modifying
	@Transactional
	@Query(value = "update placeordercustomerdetails set is_delivered = 'Yes' where sn=:sn",nativeQuery = true)
	public int changeDeliveryStatus(@Param("sn") int sn);
	
	@Query(value = "select * from placeordercustomerdetails where mobile=:mobile and password=:password",nativeQuery = true)
	public List<CheckoutOrderCustomerDetailsPage> getSpecificCustomerId(@Param("mobile")String mobile,@Param("password")String password);

	@Modifying
	@Transactional
	@Query(value = "delete from placeordercustomerdetails where orderid=:orderid ",nativeQuery = true)
	public int deleteCustomerOrderDeatils(@Param("orderid")String orderid);

}
