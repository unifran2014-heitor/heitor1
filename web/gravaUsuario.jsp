<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    String nome = request.getParameter("nome");
    String perfil = request.getParameter("perfil");
    String cargo = request.getParameter("cargo");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor1",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into usuario(nome, login, senha, perfil, cargo) values ('" + nome + "','" + login + "','" + senha + "','" + perfil + "','" + cargo + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("admin.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
