package com.greatlearning.crm.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.crm.Customer;
import com.greatlearning.crm.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService service;

	@GetMapping("/")
	public String getStudents(Map<String, List<Customer>> map) {
		map.put("customers", service.findAll());
		return "homePage";
	}

	public CustomerController() {
		System.out.println("Customer Controller Loaded");
	}

	@GetMapping("/delete")
	public String deleteCustomers(@RequestParam int customerId) {
		this.service.deleteById(customerId);
		return "redirect:/";

	}

	@GetMapping("/add")
	public String addCustomer(Map<String, Customer> map) {
		map.put("Customer", new Customer());
		return "customerEnrollmentForm";
	}

	@GetMapping("/update")
	public String updateCustomer(@RequestParam int customerId, Map<String, Customer> map) {
		System.out.println("update" + customerId);
		Customer customer = this.service.findById(customerId);
		map.put("Customer", customer);
		return "customerEnrollmentForm";
	}

	@PostMapping("/save")
	public String save(Customer customer) {
		this.service.save(customer);
		return "redirect:/";

	}

}
