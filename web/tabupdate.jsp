<%-- 
    Document   : tabupdate
    Created on : Apr 16, 2018, 9:36:25 PM
    Author     : RICO
--%>
<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%@page import="model.Nasabah"%>
<%@page import="service.admin.ServiceNasabah"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    Tabungan tab = ServiceTabungan.getInstance().getById(n.getId());
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Create Nasabah</h1>
            <form action="tabupdateindex.jsp" method="POST">
                <table>
                    <tr>
                        <td></td>
                        <td><input type="hidden" name="norek" value="<% out.print(tab.getRekening()); %>"></td>
                    </tr>
                    <tr>
                        <td>User</td>
                        <td> : <input type="text" name="userName" value="<% out.print(tab.getUser()); %>"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> : <input type="password" name="pass" value="<% out.print(tab.getPass()); %>"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <input type="hidden" name="saldo" value="<% out.print(tab.getSaldo()); %>"></td>
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
