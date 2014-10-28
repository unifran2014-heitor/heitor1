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
        <title>Atualizar Base de Dados</title>
    </head>
    <body>
        <form method="post" action="atualizarBase.jsp">
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
