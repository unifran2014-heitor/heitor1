<%-- 
    Document   : login
    Created on : 26/10/2014, 19:15:28
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2", "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where login='" + login + "' and senha='" + senha + "'");
    if (rs.next()) {
        session.setAttribute("nome", rs.getString("nome"));
        session.setAttribute("perfil", rs.getString("perfil"));
        session.setAttribute("login", rs.getString("login"));
        session.getCreationTime();
        //session.setMaxInactiveInterval(600);                
        
        if (session.getAttribute("perfil").equals("mkt")) { 
            response.sendRedirect("admin.jsp");
        }
        else if (session.getAttribute("perfil").equals("sup")){  
            response.sendRedirect("user.jsp");
        } 
        else {
        out.println("Usuário ou senha inválidos <a href='index.jsp'>Tente novamente</a>");
    }
        
    }
        
%>
