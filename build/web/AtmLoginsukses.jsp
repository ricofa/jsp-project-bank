<%-- 
    Document   : AtmLoginsukses
    Created on : Apr 18, 2018, 1:45:26 PM
    Author     : RICO
--%>

<%@page import="model.Atm"%>
<%@page import="service.admin.ServiceAtm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String string = String.valueOf(session.getAttribute("LoginAtm"));
    Long noAtm = Long.valueOf(string);
    Atm kartu = ServiceAtm.getInstance().getById(noAtm);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login ATM Sukses</title>
    </head>
    <body>
        <center>
            <h1>Login ATM Sukses dengan No Kartu : <% out.println(kartu.getNoatm()); %> </h1>
            <ul>
                <li><a href="AtmSaldo.jsp">Cek Saldo</a></li>
                <li><a href="AtmTf.jsp">Transfer Uang</a></li>
                <li><a href="AtmAmbil.jsp">Ambil Uang</a></li>
                <li><a href="AtmSimpan.jsp">Simpan Uang</a></li>
            </ul>
        </center>
    </body>
</html>