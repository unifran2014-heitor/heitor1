<%-- 
    Document   : index
    Created on : 26/10/2014, 18:42:33
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Login</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Faça o login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="login" value="" /></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="password" name="senha" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Entrar" /></td>
                        <td><input type="reset" value="Limpar" /> <a href='esqueci.jsp'>  Esqueci minha senha</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
