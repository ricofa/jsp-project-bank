<%-- 
    Document   : tloginSukses
    Created on : Apr 18, 2018, 12:11:02 AM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String string = String.valueOf(session.getAttribute("RekLoginTeller"));
    Long noRek = Long.valueOf(string);
    Tabungan tabungan = ServiceTabungan.getInstance().getById(noRek);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Teller Sukses</title>
    </head>
    <body>
        <center>
            <h1>Selamat Datang Nasabah : <% out.println(tabungan.getUser()); %></h1>
            <ul>
                <li><a href="tellersaldo.jsp">Cek Saldo</a></li>
                <li><a href="tellertf.jsp">Transfer Uang</a></li>
                <li><a href="tellerambil.jsp">Ambil Uang</a></li>
                <li><a href="tellersimpan.jsp">Simpan Uang</a></li>
            </ul>
        </center>