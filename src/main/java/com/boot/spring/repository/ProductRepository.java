package com.boot.spring.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.boot.spring.domain.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, String>{

}
