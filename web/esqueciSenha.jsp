<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    String cpf = request.getParameter("cpf");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int res = 0;
    
    res = st.executeUpdate("update usuario set senha = " + senha + "  where  login = ('"+ login + "') and cpf = ('"+ cpf + "')");
         
    if (res == 1) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Senha alterada com sucesso');");
            out.println("history.back();");
            out.println("</script>");
            response.sendRedirect("index.jsp");
    } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Falha ao alterar a senha, verifique login/cpf');");
            out.println("history.back();");
            out.println("</script>");
    }
    
            
%>
