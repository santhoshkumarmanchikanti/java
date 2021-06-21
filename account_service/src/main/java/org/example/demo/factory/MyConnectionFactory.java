package org.example.demo.factory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnectionFactory {
	
	private Connection connection;
	private static MyConnectionFactory factory;
	
	private MyConnectionFactory() throws SQLException
	{
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr1","root","root");
	}
	
	
	public static MyConnectionFactory createFactory() throws SQLException
	{
		if(factory==null)
		{
			factory=new MyConnectionFactory();
		}
		return factory;
	}
	
	public Connection getMyConnection()
	{
		return connection;
	}
}
