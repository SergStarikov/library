package com.starikoff.myLibrary;

import com.starikoff.myLibrary.model.Book;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookDBUtil {
    private DataSource dataSource;

    public BookDBUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }

    public List<Book> getBooks() throws Exception {
        List<Book> books = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "SELECT * FROM books";

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            // process result set
            while (myRs.next()) {

                // retrieve data from result set row
                long bookId = myRs.getLong("BOOK_ID");
                long categoryId = myRs.getLong("CATEGORY_ID");
                String bookTitle = myRs.getString("BOOK_TITLE");
                String publisher = myRs.getString("PUBLISHER");

                // create new student object
                Book tempBook = new Book(bookId, categoryId, bookTitle, publisher);

                // add it to the list of students
                books.add(tempBook);
            }

            return books;
        }finally {
            close(myConn, myStmt, myRs);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close();   // doesn't really close it ... just puts back in connection pool
            }
        }
        catch (Exception exc) {
            exc.printStackTrace();
        }
    }
}
