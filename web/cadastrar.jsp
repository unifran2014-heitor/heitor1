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
        <%
            //Verifica se está logado
            if (session.getAttribute("perfil").equals("adm")) {
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
            } else {
                out.println("Você não está logado no sistema ou não tem permissões para acessar está página. Clique <a href='index.jsp'>aqui</a> para logar-se");
            }
        %>
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
                            <td><input list="perfil" name="perfil">
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
            <a href='admin.jsp'>Voltar</a><br>
            <a href='logout.jsp'>Sair do sistema</a>
    </body>
</body>
</html>
