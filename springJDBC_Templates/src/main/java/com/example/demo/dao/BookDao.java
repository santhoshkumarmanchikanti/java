package com.example.demo.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.example.demo.model.Book;
public interface BookDao {
	public Book createBook(Book book) throws SQLException;
}
