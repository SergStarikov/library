package com.starikoff.myLibrary.dao;

import com.starikoff.myLibrary.model.Book;
import com.starikoff.myLibrary.model.Category;

import java.util.List;

public interface BookDAO {
	public List<Book> findAllBooks();
	
	public List<Book> searchBooksByKeyword(String keyWord);
	
	public List<Category> findAllCategories();

	public void insert(Book book);

	public void update(Book book);

	public void delete(Long bookId);

}
