package com.gl.customer.management.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gl.customer.management.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	private SessionFactory sessionFactory;
	private Session session;
	
	@Autowired
	public CustomerDaoImpl(SessionFactory sessionFactory) {
		try {
			session = sessionFactory.getCurrentSession();
		}	catch (HibernateException e) {
				session = sessionFactory.openSession();
		}
	}

	@Override
	public List<Customer> getCustomers() {
		return session.createQuery("Select c from Customer c", Customer.class).getResultList();
	}

	@Override
	public void deleteCustomer(Integer id) {
		Customer customer = session.get(Customer.class, id);
		session.getTransaction().begin();
		session.delete(customer);
		session.getTransaction().commit();
	}

	@Override
	public void saveCustomer(Customer customer) {
		session.save(customer);
	}

	@Override
	public Customer getCustomer(Integer id) {
		Customer customer = session.get(Customer.class, id);
		return customer;
	}
}