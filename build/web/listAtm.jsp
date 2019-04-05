<%-- 
    Document   : listAtm
    Created on : Apr 17, 2018, 10:52:02 PM
    Author     : RICO
--%>
<%@page import="service.admin.ServiceAtm"%>
<%@page import="java.util.List"%>
<%@page import="model.Atm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>List Kartu ATM</h1>
            <table border="1" width="90%">
                <tr>
                    <th>ID Nasabah</th>
                    <th>Nama Nasabah</th>
                    <th>No Rekening Tabungan</th>
                    <th>No Kartu ATM</th>
                    <th>PIN Kartu ATM</th>
                    <th>Jenis Kartu ATM</th>
                    <th>Saldo</th>
<!--                    <th>Delete ATM</th>-->
                </tr>
                <%
                    List <Atm> listatm = ServiceAtm.getInstance().getAll();
                    for(Atm a : listatm){
                %>
                
                <tr>
                    <td><% out.println(a.getTabungan().getNasabah().getId()); %></td>
                    <td><% out.println(a.getTabungan().getNasabah().getUser()); %></td>
                    <td><% out.println(a.getTabungan().getRekening()); %></td>
                    <td><% out.println(a.getNoatm()); %></td>
                    <td><% out.println(a.getPin()); %></td>
                    <td><% out.println(a.getJenisatm()); %></td>
                    <td><% out.println(a.getTabungan().getSaldo()); %></td>
<!--                    <td><% session.setAttribute("noatm", a.getNoatm()); %><a href="atmdel.jsp">Delete</a></td>-->
                </tr>
                <%
                    }
                %>
            </table>

        </center>
    </body>
</html>
