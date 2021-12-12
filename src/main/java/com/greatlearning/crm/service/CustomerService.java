package com.greatlearning.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.crm.Customer;

@Service
public interface CustomerService{
	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer customer);

	public void deleteById(int theId);

}

