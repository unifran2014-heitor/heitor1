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
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Página de Login</title>
    </head>
    <body>
        <form class="flp" method="post" action="login.jsp">
            <center>
                <table
                    <tr>
                        <td>Login</td>
                    </tr>    
                    <tr>
                        <td><input type="text" name="login" value="" /></td>
                    </tr>
                     <tr>
                        <td>Senha</td>
                    </tr>  
                    <tr>
                        <td><input type="password" name="senha" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Entrar" /></td>
                    </tr>
                    <tr>
                        <td><a href='esqueci.jsp'>  Esqueci minha senha</a></td>
                    </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
