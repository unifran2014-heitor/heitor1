<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senhaatual = request.getParameter("senhaatual");
    String novasenha = request.getParameter("novasenha");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    int res = 0;
    
    res = st.executeUpdate("update usuario set senha = " + novasenha + "  where  login = ('"+ login + "') and senha = ('"+ senhaatual + "')");
         
    if (res == 1) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Senha alterada com sucesso');");
            out.println("history.back();");
            out.println("</script>");
            response.sendRedirect("index.jsp");
    } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Falha ao alterar a senha, verifique login/senha');");
            out.println("history.back();");
            out.println("</script>");
    }
    
    
            
%>
