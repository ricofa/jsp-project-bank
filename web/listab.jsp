<%-- 
    Document   : listTabungan
    Created on : Apr 16, 2018, 9:21:16 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan" %>
<%--<%@page import="service.admin.ServiceNasabah"%>
<%@page import="model.Nasabah"%>--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
       <h1>List Tabungan</h1>
            <table border="1">
                
                <tr>
                    <th>ID</th>
                    <th>Nama Nasabah</th>
                    <th>No Rekening</th>
                    <th>User</th>
                    <th>Pass</th>
                    <th>Saldo</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
                <%
                    List<Tabungan> listTabungan = ServiceTabungan.getInstance().getAll();
                    for(Tabungan t : listTabungan){
                %>
                <tr>
                    <td><% out.println(t.getNasabah().getId()); %></td>
                    <td><% out.println(t.getNasabah().getUser()); %></td>
                    <td><% out.println(t.getRekening());%></td>
                    <td><% out.println(t.getUser());%></td>
                    <td><% out.println(t.getPass());%></td>
                    <td><% out.println(t.getSaldo());%></td>
                    <td><a href="tabupdate.jsp?id=<% out.println(t.getRekening()); %>">Update</a></td>
                    <td><a href="tabdel.jsp?id=<% out.println(t.getRekening()); %>">Delete</a></td>
<!--                    <td><a href="atmadd.jsp?id=<% out.println(t.getRekening()); %>">Create ATM</a></td>-->
                </tr>
                <% }
                    
                %>
            </table>
        </center>
    </body>
</html>
