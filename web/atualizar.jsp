<%-- 
    Document   : atualizar
    Created on : 28/10/2014, 20:03:05
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Atualizar Base de Dados</title>
    </head>
    <body>
        <%
            //Verifica se está logado
            if(session.getAttribute("perfil").equals("adm")){
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
                out.println("<a href='admin.jsp'>Voltar</a><br>");
                out.println("<a href='logout.jsp'>Sair do sistema</a>");
                
                
            } else {
                out.println("Você não está logado no sistema ou não tem permissões para acessar está página. Clique <a href='index.jsp'>aqui</a> para logar-se");
            }
        %>
        <form id="flp" method="post" action="atualizarBase.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Atualizar Base de Dados</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Atualizar Base de Clientes</td>
                        <td><input type="file" name="listadeClientes" /></td>
                    </tr>
                    <!--<tr>
                        <td>Atualizar Base de Estoque</td>
                        <td><input type="file" name="listadeEstoque" /></td>
                    </tr>-->
                    <tr>
                        <td><input type="submit" value="Atualizar" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
