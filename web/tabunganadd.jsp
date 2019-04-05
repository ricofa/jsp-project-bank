<%-- 
    Document   : tabunganadd
    Created on : Apr 16, 2018, 8:45:21 PM
    Author     : RICO
--%>

<%@page import="model.Tabungan" %>
<%@page import="service.admin.ServiceTabungan" %>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%@page import="model.Nasabah" %>
<%@page import="service.admin.ServiceNasabah" %>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabungan</title>
    </head>
    <body>
        <h1>Create Tabungan</h1>
    <center>
        <form action="tabunganindex.jsp" method="POST">
            <table>
                <tr>
                        <td>ID</td>
                        <td> : <input type="text" value="<% out.println(n.getId()); %>" name="idNas" ></td>
                    </tr>
                <tr>
                        <td>User</td>
                        <td> : <input type="text" name="user"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> : <input type="text" name="pass"></td>
                    </tr>
                    <tr>
                        <td>Saldo</td>
                        <td> : <input type="text" name="saldo"></td>
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
