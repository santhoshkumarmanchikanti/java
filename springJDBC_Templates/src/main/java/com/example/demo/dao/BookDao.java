package com.example.demo.dao;
import java.sql.SQLException;
import java.util.List;

import com.example.demo.model.Book;
import java.sql.SQLException;

import com.example.demo.model.Book;
public interface BookDao {
	//public Connection getMyConnection() throws SQLException;
	
	public Book createBook(Book book) throws SQLException;
	
	public List<Book> displayAllBook() throws SQLException;
}
