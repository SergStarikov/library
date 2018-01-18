package com.starikoff.myLibrary.model;

import java.util.List;

public class Book {
	private Long bookId;
	private Long categoryId;
	private String bookTitle;
	private String publisher;
	private List<Author> authors;

	public Book(Long bookId, Long categoryId, String bookTitle, String publisher) {
		this.bookId = bookId;
		this.categoryId = categoryId;
		this.bookTitle = bookTitle;
		this.publisher = publisher;
	}

	public Book(){

	}

	public Long getBookId() {
		return bookId;
	}

	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}

	
	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public List<Author> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Author> authors) {
		this.authors = authors;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String toString() {
		return "Book - Id: " + bookId + ", Book Title: " + bookTitle;
	}

}
