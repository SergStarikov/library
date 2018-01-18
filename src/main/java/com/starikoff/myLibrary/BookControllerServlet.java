package com.starikoff.myLibrary;


import com.starikoff.myLibrary.model.Book;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;

@WebServlet("/BookControllerServlet")
public class BookControllerServlet extends HttpServlet {
    private BookDBUtil bookDBUtil;

    @Resource(name="jdbc/web_books_storage")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            bookDBUtil = new BookDBUtil(dataSource);

        }catch (Exception e){
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");

            // if the command is missing, then default to listing students
            if (theCommand == null) {
                theCommand = "LIST";
            }

            // route to the appropriate method
            switch (theCommand) {

                case "LIST":
                    listBooks(request, response);
                    break;
                default:
                    listBooks(request, response);
            }
        }catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    private void listBooks(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Book> books = bookDBUtil.getBooks();
        request.setAttribute("BOOK_LIST", books);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list-books.jsp");
        dispatcher.forward(request,response);
    }
}
