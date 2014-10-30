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
            if(session.getAttribute("perfil").equals("adm")){
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
                out.println("<a href='admin.jsp'>Voltar</a><br>");
                out.println("<a href='logout.jsp'>Sair do sistema</a>");
                
                
            } else {
                out.println("Você não está logado no sistema ou não tem permissões para acessar está página. Clique <a href='index.jsp'>aqui</a> para logar-se");
            }
        %>
        <form id="flp "method="post" action="gravaUsuario.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Preencha o formulário</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nome Completo</td>
                        <td><input type="text" name="nome" value="" /></td>
                    </tr>
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="login" value="" /></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="password" name="senha" value="" /></td>
                    </tr>
                    <tr>
                        <td>Perfil</td>
                        <td><input type="text" name="perfil" value="" /></td>
                    </tr>
                    <tr>
                        <td>Cargo</td>
                        <td><input type="text" name="cargo" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Salvar" /></td>
                        <td><input type="reset" value="Limpar" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
    </body>
</html>
