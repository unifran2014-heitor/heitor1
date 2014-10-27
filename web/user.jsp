<%-- 
    Document   : user
    Created on : 26/10/2014, 19:41:55
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Verifica se está logado
            if(session.getAttribute("perfil").equals("usr")){
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
                out.println("<a href='logout.jsp'>Sair do sistema</a>");
                
                
            } else {
                out.println("Você não está logado no sistema ou não tem permissões para acessar está página. Clique <a href='index.jsp'>aqui</a> para logar-se");
            }
        %>
    </body>
</html>
