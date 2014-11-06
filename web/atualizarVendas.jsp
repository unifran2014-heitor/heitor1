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
        <nav>
            <ul class="menu">
                <li><a href="#">Solicitações</a></li>
                <li><a href="#">Montar Carga</a></li>
                <li><a href="#">Atualizar Base</a>
                    <ul>
                        <li><a href='atualizarClientes.jsp'>Atualizar Clientes</a></li>
                        <li><a href='atualizarVendas.jsp'>Atualizar Vendas</a></li>
                        <li><a href='atualizarComodatos.jsp'>Atualizar Comodatos</a></li>                    
                    </ul>
                </li>
                <li><a href='cadastrar.jsp'>Cadastrar</a></li>
                <li><a href='alterar.jsp'>Alterar Senha</a></li>                
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
        <form class="flp" enctype="multipart/form-data" method="post" action="http://localhost/updateVendas.php">
            <center>
                <table>
                    <tr>
                        <td><h2>Atualizar Base de Vendas</h2></td>
                    </tr>
                    <tr>
                        <td>Atualizar Base de Vendas</td>
                    </tr>
                    <tr>
                        <td><input type="file" name="filename" /></td>
                    </tr>                   
                    <tr>
                        <td><input type="submit" name='submit' value="Atualizar" /></td>
                    </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
