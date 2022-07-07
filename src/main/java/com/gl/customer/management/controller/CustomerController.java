package com.gl.customer.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.customer.management.entity.Customer;
import com.gl.customer.management.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/list")
	public String listCustomers(Model theModel) {
		List<Customer> theCustomers = customerService.getCustomers();
		theModel.addAttribute("customers", theCustomers);
		return "list-customers";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/showForm")
	public String showFormForAdd(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		customerService.saveCustomer(theCustomer);	
		return "redirect:/customer/list";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/updateForm")
	public String showFormForUpdate(@RequestParam("customerId") int id, Model theModel) {
		Customer theCustomer = customerService.getCustomer(id);	
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {
		customerService.deleteCustomer(id);
		return "redirect:/customer/list";
	}
}