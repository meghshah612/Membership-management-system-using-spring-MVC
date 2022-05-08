package com.mypackage.springdemo.dao;

import java.util.List;

import com.mypackage.springdemo.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCoustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

}
