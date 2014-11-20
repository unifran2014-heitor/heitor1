<%@ page import ="java.sql.*" %>

<html>
    <head>
    </head>
    <body>
        <%
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");            
            String perfil = request.getParameter("perfil");

            if (perfil.equals("Supervisor")) {
                perfil = "sup";
            } else if (perfil.equals("Marketing")) {
                perfil = "mkt";

            }
            String cargo = request.getParameter("cargo");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2",
                    "root", "");
            Statement st = con.createStatement();
            //ResultSet rs;
            int i = st.executeUpdate("insert into usuario(nome, cpf, login, senha, perfil) values ('" + nome + "','" + cpf + "','" + login + "','" + senha + "','" + perfil + "')");
            if (i > 0) {
                //session.setAttribute("userid", user);
                response.sendRedirect("admin.jsp");
                // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                response.sendRedirect("index.jsp");
            }
        %>

    </body>


</html>