package com.gl.customer.management.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gl.customer.management.dao.CustomerDao;
import com.gl.customer.management.entity.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}

	@Override
	public void saveCustomer(Customer customer) {
		customerDao.saveCustomer(customer);
	}

	@Override
	public Customer getCustomer(Integer id) {
		return customerDao.getCustomer(id);
	}

	@Override
	public void deleteCustomer(Integer id) {
		customerDao.deleteCustomer(id);
	}
}