<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("utf-8");
    String seq = request.getParameter("user_seq");
    String beerid = request.getParameter("beerid");

%>

<%
	String url_mysql = "jdbc:mysql://114.199.130.68/macflix?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
 	String id_mysql = "root";
 	String pw_mysql = "qwer1234";
    String WhereDefault = "SELECT review_aroma, review_appearance, review_palate, review_taste FROM Review where user_seq =" + seq + " and beer_beerid =" + beerid + ";";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
        Statement stmt_mysql = conn_mysql.createStatement();

        ResultSet rs = stmt_mysql.executeQuery(WhereDefault); // &quot;
        
        if (rs.next()) {
            %><%= rs.getString(1) %>,<%= rs.getString(2) %>,<%= rs.getString(3) %>,<%= rs.getString(4) %><%
        }

        conn_mysql.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
	
%>