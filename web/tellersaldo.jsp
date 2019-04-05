<%-- 
    Document   : tellersaldo
    Created on : Apr 18, 2018, 12:11:44 AM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Saldo Anda sekarang adalah : 
            <%
                String string = String.valueOf(session.getAttribute("RekLoginTeller"));
                Long id = Long.valueOf(string);
                Tabungan tabungan = ServiceTabungan.getInstance().getById(id);
                out.println(tabungan.getUser()+ "=   ");
                out.println(tabungan.getSaldo());
            %></h1>
    </body>
</html>
