<%-- 
    Document   : logout
    Created on : 26/10/2014, 19:59:44
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
        session.setAttribute("login", null);
        session.setAttribute("nome", null);
        session.setAttribute("perfil", null);        
        session.invalidate();
        response.sendRedirect("index.jsp");
    %>
