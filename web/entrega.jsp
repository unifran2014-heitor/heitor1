<%-- 
    Document   : cadastrar
    Created on : 26/10/2014, 19:46:28
    Author     : FELIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Solicitação de Entrega</title>
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
            if (session.getAttribute("perfil").equals("mkt")) {
                out.println("<h1>Bem vindo, " + session.getAttribute("nome") + "</h1>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Acesso Negado');");
                out.println("history.back();");
                out.println("</script>");
            }
        %>
        <a href='logout.jsp'>Sair</a>
        <form class="flp" method="post" action="gravaEntrega.jsp">
            <center>
                <table>
                    <tr>
                        <td><h2>Solicitação de Entrega</h2></td>
                    </tr>

                    <tr>
                        <td><input list="cliente" type="text" name="cliente" value="" placeholder="Cliente" />
                            <datalist id="cliente">   
                            <%
                                String nome = "";
                                String setor = "";
                                String cidade = "";
                                String material = "";
                                

                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heitor2", "root", "");
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from usuario ");
                                while (rs.next()) {
                                    nome = rs.getString("nome");
                                    setor = rs.getString("login");
                                    cidade = rs.getString("senha");
                                    material = rs.getString("cargo");
                            %>
                                      <% while (rs.next()!= false){
                                      %>
                                      <option value='<%= nome%>'>
                                      <%
                                        }
                                      %>                   
                                
                            
                            <% }
                                rs.close();
                                st.close();
                                con.close();
                            %>
                            </datalist> 
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" name="setor" value="" placeholder="Setor"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="cidade" value="" placeholder="Cidade" /></td>
                    </tr>
                    <tr>
                        <td><input list="material" name="material" type="text" placeholder="Material">
                            <datalist id="material">
                                <option value="Cadeira">
                                <option value="Mesa">                                
                            </datalist> 
                        </td>
                    </tr>
                    <tr>
                        <td><input list="quantidade" type="text" name="quantidade" value="" placeholder="Quantidade" />
                            <datalist id="quantidade">
                                <option value="1">
                                <option value="2">
                                <option value="3">
                                <option value="4"> 
                                <option value="5">
                                <option value="6"> 
                                <option value="7">
                                <option value="8"> 
                                <option value="9">
                                <option value="10"> 
                                <option value="11">
                                <option value="12"> 
                                <option value="13">
                                <option value="14"> 
                                <option value="15"> 
                            </datalist>                             
                        </td>
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
</html>
