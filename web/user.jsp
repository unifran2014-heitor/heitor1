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
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <ul class="menu">
                <li><a href="#">Solicitações</a>
                    <ul>
                        <li><a href='entrega.jsp'>Solicitar Entrega</a></li>
                        <li><a href='recolha.jsp'>Solicitar Recolha</a></li>                   
                    </ul>
                </li>  
                <li><a href="#">Montar Carga</a></li>
                <li><a href="#">Atualizar Base</a>
                    <ul>
                        <li><a href='atualizarClientes.jsp'>Atualizar Clientes</a></li>
                        <li><a href='atualizarVendas.jsp'>Atualizar Vendas</a></li>
                        <li><a href='atualizarComodatos.jsp'>Atualizar Comodatos</a></li>                    
                    </ul>
                </li>
                <li><a href='alterar.jsp'>Alterar Senha</a></li>                
            </ul>
        </nav>
        <%
                //Verifica se está logado
                if (session.getAttribute("perfil").equals("usr")) {
                    out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Acesso Negado');");
                    out.println("</script>");
                    response.sendRedirect("index.jsp");
                }
        %>
        <a href='logout.jsp'>Sair</a>
    </body>
</html>
