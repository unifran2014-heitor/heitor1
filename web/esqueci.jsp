<%-- 
    Document   : esqueci
    Created on : 27/10/2014, 20:16:40
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Senha</title>
    </head>
    <body>
        <form method="post" action="alterarSenha.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Alterar Senha</th>
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
                        <td>CPF</td>
                        <td><input type="text" name="cpf" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Alterar" /></td>
                        <td><input type="reset" value="Limpar" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>