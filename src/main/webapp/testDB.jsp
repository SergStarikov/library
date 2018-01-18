<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>JDBC</title>
</head>
<body>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_books_storage", "root", "23031987");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM books");
    %>
    <table border= "1">
        <%
        ResultSetMetaData resMetaData = rs.getMetaData();
        int nCols = resMetaData.getColumnCount();
        %>
        <tr>
            <%
                for (int kCol = 1; kCol <= nCols; kCol++) {
                out.print("<td><b>" + resMetaData.getColumnName(kCol) + "</b></td>");
                }
            %>
        </tr>
        <%
         while (rs.next()) {
        %>
        <tr>
            <%
                for (int kCol = 1; kCol <= nCols; kCol++) {
                out.print("<td>" + rs.getString(kCol) + "</td>");
                }
            %>
        </tr>
        <%}%>
    </table>
    <%
        conn.close();
    %>
</body>
</html>
