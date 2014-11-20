<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senhaatual = request.getParameter("senhaatual");
    String senha = request.getParameter("senha");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("update usuario set senha = " + senha + "  where  login = ('"+ login + "') and senha = ('"+ senhaatual + "')");
    
    response.sendRedirect("index.jsp");
    
            
%>
