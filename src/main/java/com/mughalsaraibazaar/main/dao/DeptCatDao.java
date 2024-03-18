package com.mughalsaraibazaar.main.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.DeptCatPage;

public interface DeptCatDao extends CrudRepository<DeptCatPage, Integer> {
	
	@Modifying
	@Transactional
	@Query(value = "insert into dept_cat(department,category) values(:department,:category)",nativeQuery = true)
	public int insert(@Param("department")String department,@Param("category")String category);

	
	@Query(value = "from DeptCatPage")
	public List<DeptCatPage> read();


}
