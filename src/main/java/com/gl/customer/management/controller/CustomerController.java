package com.gl.customer.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String listCustomers(Model model) {
		List<Customer> Customers = customerService.getCustomers();
		model.addAttribute("customers", Customers);
		return "list-customers";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/showForm")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "customer-form";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/saveCustomer")
	public String saveCustomer(@RequestParam("id") Integer id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		Customer customer = new Customer(id, firstName, lastName, email);	
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/deleteCustomer")
	public String deleteCustomer(@RequestParam("id") Integer id) {
		customerService.deleteCustomer(id);
		return "redirect:/customer/list";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/updateCustomer")
	public String showFormForUpdate(@RequestParam("id") Integer id, Model model) {
		Customer customer = customerService.getCustomer(id);	
		model.addAttribute("command", customer);
		return "update-form";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/update")
	public String UpdateCustomer(@RequestParam("id") Integer id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		Customer customer = customerService.getCustomer(id);
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		customer.setEmail(email);
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}
}