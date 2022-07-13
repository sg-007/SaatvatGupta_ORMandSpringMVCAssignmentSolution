package com.gl.customer.management.service;

import java.util.List;

import com.gl.customer.management.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(Integer id);

	public void deleteCustomer(Integer id);
}