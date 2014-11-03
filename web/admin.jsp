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
        <nav>
            <ul class="menu">
                <li><a href="#">Solicitações</a></li>
                <li><a href="#">Montar Carga</a></li>
                <li><a href='atualizar.jsp'>Atualizar Base</a>
                    <ul>
                        <li><a href="#">Atualizar Clientes</a></li>
                        <li><a href="#">Atualizar Vendas</a></li>
                        <li><a href="#">Atualizar Comodatos</a></li>                    
                    </ul>
                </li>
                <li><a href='cadastrar.jsp'>Cadastrar</a></li>
                <li><a href="#">Alterar Senha</a></li>                
            </ul>
        </nav>
        <%
            //Verifica se está logado
            if (session.getAttribute("perfil").equals("adm")) {
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
