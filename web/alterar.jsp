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
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Alterar Senha</title>
    </head>
    <body>
        <form class="flp" method="post" action="alterarSenha.jsp">
            <center>
            <table>
                    <tr>
                        <td><h2>Alterar Senha</h2></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="login" value="" placeholder="Login" maxlength="15" required/></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="senhaatual" value="" placeholder="Senha atual" maxlength="10" required /></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="novasenha" value="" placeholder="Nova senha" maxlength="10" required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Alterar" /></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Limpar" /></td>
                    </tr>
            </table>
            </center>
        </form>
    </body>
</html>