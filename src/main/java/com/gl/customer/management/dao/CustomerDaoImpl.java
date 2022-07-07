package com.gl.customer.management.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.gl.customer.management.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	private SessionFactory sessionFactory;
	private Session session;
	
	public CustomerDaoImpl(SessionFactory sessionFactory) {
		try {
			session = sessionFactory.getCurrentSession();
		}	catch (HibernateException e) {
				session = sessionFactory.openSession();
		}
	}

	@Override
	public List<Customer> getCustomers() {
		return session.createQuery("Select c from customer c", Customer.class).getResultList();
	}

	@Override
	public void deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer book = session.byId(Customer.class).load(id);
		session.delete(book);
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theCustomer);
	}

	@Override
	public Customer getCustomer(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Customer theCustomer = currentSession.get(Customer.class, id);
		return theCustomer;
	}
}