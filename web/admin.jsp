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
        <title>Página do Administrador</title>
    </head>
    <body>
        <%
            //Verifica se está logado
            if(session.getAttribute("perfil").equals("adm")){
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
                out.println("<a href='cadastrar.jsp'>Novo Usuário</a><br>");
                out.println("<a href='atualizar.jsp'>Atualizar Base de Dados</a><br>");
                out.println("<a href='logout.jsp'>Sair do sistema</a>");
                
            } else {
                out.println("Você não está logado no sistema ou não tem permissões para acessar está página. Clique <a href='index.jsp'>aqui</a> para logar-se");
            }
        %>
    </body>
</html>
