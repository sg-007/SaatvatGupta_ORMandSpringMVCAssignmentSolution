package com.gl.customer.management.dao;

import java.util.List;

import com.gl.customer.management.entity.Customer;

public interface CustomerDao {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(Integer id);

	public void deleteCustomer(Integer id);
	
}