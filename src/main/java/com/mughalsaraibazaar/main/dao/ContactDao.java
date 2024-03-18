package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.ContactPage;

public interface ContactDao extends CrudRepository<ContactPage, Integer> {

	@Modifying
	@Transactional
	@Query(value = "insert into contact_page(name,email,message,date) values(:name,:email,:message,:date)",nativeQuery = true)
	public int insert(@Param("name")String name, @Param("email")String email, @Param("message")String message,@Param("date")String date);

	
	@Query(value = "select * from contact_page",nativeQuery = true)
	public List<ContactPage> read();
	
	
	@Modifying
	@Transactional
	@Query(value = "delete from contact_page where sn=:sn",nativeQuery = true)
	public int deleteContact(@Param("sn")int sn);

}
