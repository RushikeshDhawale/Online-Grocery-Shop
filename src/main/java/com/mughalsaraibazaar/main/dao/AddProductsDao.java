package com.mughalsaraibazaar.main.dao;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mughalsaraibazaar.main.model.AddProductsPage;

public interface AddProductsDao extends CrudRepository<AddProductsPage, Integer>{

	@Override
	public <S extends AddProductsPage> S save(S entity);
	
	@Query(value = "select * from add_products limit 8 ",nativeQuery = true)
	public List<AddProductsPage> readFeaturedProducts();
	
	@Override
	public Iterable<AddProductsPage> findAll();
	
	@Query(value = "select * from add_products where category = :category",nativeQuery = true)
	public Iterable<AddProductsPage> searchProductCategoryWise(@Param("category")String category );

	@Query(value = "select * from add_products where department = :department",nativeQuery = true)
	public Iterable<AddProductsPage> searchProductDepartmentWise(@Param("department")String department );
	
	@Override
	public Optional<AddProductsPage> findById(Integer id);
	
	@Override
	public void deleteById(Integer id);
	
	@Modifying
	@Transactional
	@Query(value = "update add_products set title=:title, description=:description, crossprice=:crossprice, mainprice=:mainprice, availability=:availability where id=:sn ",nativeQuery = true)
	public int updateProduct(@Param("title")String title,@Param("description")String description,@Param("crossprice")String crossprice,@Param("mainprice")String mainprice,@Param("availability")String availability,@Param("sn")int sn);

	/* Pagination */
	
	@Query(value = "select * from add_products limit :start, 8",nativeQuery = true)
	public List<AddProductsPage> findAllProducts(@Param("start")int start);
	
	@Query(value = "select * from add_products where category = :category limit :start,8",nativeQuery = true)
	public List<AddProductsPage> findProductCategoryWise(@Param("category")String category, @Param("start")int start );

	@Query(value = "select * from add_products where department = :department limit :start,8",nativeQuery = true)
	public List<AddProductsPage> findProductDepartmentWise(@Param("department")String department,@Param("start")int start );
	
}
