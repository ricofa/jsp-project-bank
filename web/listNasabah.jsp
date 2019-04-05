<%-- 
    Document   : list
    Created on : Apr 15, 2018, 10:45:01 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceNasabah"%>
<%@page import="java.util.List"%>
<%@page import="model.Nasabah"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="systemAdminNasabah.jsp">Kembali ke Menu Sebelumnya</a>
        <a href="index.jsp">Kembali ke Menu Awal</a>
        <center>
            <h1>List Nasabah</h1>
            <table border="1">
                
                <tr>
                    <th>ID</th>
                    <th>Nama Nasabah</th>
<!--                    <th>Password Nasabah</th>-->
                    <th>Update</th>
                    <th>Delete</th>
                    <th>Create</th
                </tr>
                <%
                    List<Nasabah> listNasabah = ServiceNasabah.getInstance().getAll();
                    for(Nasabah n : listNasabah){
                %>
                <tr>
                    <td><% out.println(n.getId()); %></td>
                    <td><% out.println(n.getUser()); %></td>
<!--                    <td></td>-->
                    <td><a href="listab.jsp">Lihat</a></td>
                    <td><a href="delnasabah.jsp?id=<% out.println(n.getId()); %>">Delete</a></td>
                    <td><a href="tabunganadd.jsp?id=<% out.println(n.getId()); %>">Create</a></td>
                </tr>
                <% }
                    
                %>
            </table>
<%--<jsp:include page="updateNasabahForm.jsp">
                        <jsp:param name="idNasabah" value="<%= n.getId() %>"/>
                    </jsp:include>--%>
        </center>
    </body>
</html>
