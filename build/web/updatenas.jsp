<%-- 
    Document   : updatenas
    Created on : Apr 15, 2018, 11:11:32 PM
    Author     : RICO
--%>

<%@page import="model.Nasabah"%>
<%@page import="service.admin.ServiceNasabah"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    Nasabah nas = ServiceNasabah.getInstance().getById(n.getId());
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Nasabah</title>
    </head>
    <body>
        <a href="systemAdminNasabah.jsp">Kembali ke Menu Sebelumnya</a>
        <a href="index.html">Kembali ke Menu Awal</a>
        <center>
            <h1>Create Nasabah</h1>
            <form action="updateindex.jsp" method="POST">
                <table>
                    <tr>
                        <td><input type="hidden" name="idNasabah" value="<% out.print(nas.getId()); %>"></td>
                    </tr>
                    <tr>
                        <td>Nama Nasabah</td>
                        <td> : <input type="text" name="nasabahName" value="<% out.print(nas.getUser()); %>"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
