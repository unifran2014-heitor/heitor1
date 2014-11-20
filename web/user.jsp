<%-- 
    Document   : admin
    Created on : 26/10/2014, 19:41:47
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Home - Supervisor</title>
    </head>
    <body>
        <nav>
            <ul class="menu">                
                <li><a href="visualiza.jsp#">Visualiza Cargas</a></li>
                <li><a href='alterar.jsp'>Alterar Senha</a></li>                
            </ul>
        </nav>
        <%
            //Verifica se está logado
            if (session.getAttribute("perfil").equals("sup")) {
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Acesso Negado');");
                out.println("history.back();");
                out.println("</script>");
            }
        %>
        <a href='logout.jsp'>Sair</a>
    </body>
</html>
