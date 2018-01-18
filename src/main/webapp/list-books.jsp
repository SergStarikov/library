<%@ page language="java" contentType="text/html; charset=Cp1251" pageEncoding="Cp1251"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <title>Books</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Books</h2>
    </div>
</div>

<div id="container">

    <div id="content">
        <input type="button" value="Add Student" onclick="window.location.href='add-student-form.jsp';
			return false;" class="add-student-button">

        <table>

            <tr>
                <th>bookId</th>
                <th>categoryId</th>
                <th>title</th>
                <th>publisher</th>
            </tr>


            <c:forEach var="tempBook" items="${BOOK_LIST}">

                <tr>
                    <td> ${tempBook.getBookId()} </td>
                    <td> ${tempBook.getCategoryId()} </td>
                    <td> ${tempBook.getBookTitle()} </td>
                    <td> ${tempBook.getPublisher()} </td>
                </tr>

            </c:forEach>

        </table>

    </div>

</div>
</body>


</html>








