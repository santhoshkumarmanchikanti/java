package org.example.dao;
import java.sql.SQLException;
import java.util.List;

import org.example.model.Employee;
public interface EmployeeDao {
	public Employee createEmployee(Employee employee) throws SQLException;
	
	public List<Employee> getAllEmployees()throws SQLException;
}
