package com.finalexam.webshop.Dao;

import com.finalexam.webshop.Entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
