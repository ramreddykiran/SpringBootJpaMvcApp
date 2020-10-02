package com.boot.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.boot.spring.domain.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String>{

}
