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
        <title>Cadastrar Usuário</title>
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
        <form class="flp" method="post" action="gravaUsuario.jsp">
            <center>
                <table>
                        <tr>
                            <td><h2>Preencha o formulário</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="nome" value="" placeholder="Nome Completo" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="login" value="" placeholder="Login"/></td>
                        </tr>
                        <tr>
                            <td><input type="password" name="senha" value="" placeholder="Senha" /></td>
                        </tr>
                        <tr>
                            <td><input list="perfil" name="perfil" type="text">
                            <datalist id="perfil">
                                <option value="Supervisor">
                                <option value="Marketing">                                
                            </datalist> 
                            </td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cargo" value="" placeholder="Cargo" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Salvar" /></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Limpar" /></td>
                        </tr>
                </table>
            </center>
        </form>
    </body>
</body>
</html>
