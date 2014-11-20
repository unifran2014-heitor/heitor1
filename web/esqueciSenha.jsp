<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    String cpf = request.getParameter("cpf");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("update usuario set senha = " + senha + "  where  login = ('"+ login + "')");
    
    response.sendRedirect("index.jsp");
    
            
%>
