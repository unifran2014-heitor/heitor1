<%-- 
    Document   : cadastrar
    Created on : 26/10/2014, 19:46:28
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Solicitação de Recolha</title>
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

        <form class="flp3" method="post" action="gravaEntrega.jsp">
                <table>
                    <tr>
                        <td colspan="7"><h2>Solicitação de Recolha</h2></td>
                    </tr>
                    <tr>
                        <td>Cliente</td>
                        <td>Setor</td>
                        <td>Cidade</td>
                        <td>Material</td>
                        <td>Quantidade</td>
                        <td></td>
                        <td></td>
                    </tr>   
                    <tr>
                        <td><input type="text" name="cliente" value="" placeholder="Cliente" /> </td>                              
                        <td><input type="text" name="setor" value="" placeholder="Setor"/></td>
                        <td><input type="text" name="cidade" value="" placeholder="Cidade" /></td>
                        <td><input type="text" name="material" placeholder="Material"> </td>
                        <td><input type="text" name="quantidade" value="" placeholder="Quantidade" /> </td>           
                        <td><input type="submit" value="Consultar" /></td>
                        <td><input type="reset" value="Limpar" /></td>
                </table>
        </form>
       
    </body>
</html>
