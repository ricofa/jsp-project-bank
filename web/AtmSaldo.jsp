<%-- 
    Document   : AtmSaldo
    Created on : Apr 18, 2018, 1:45:54 PM
    Author     : RICO
--%>

<%@page import="model.Atm"%>
<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceAtm"%>


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
                String string = String.valueOf(session.getAttribute("LoginAtm"));
                Long id = Long.valueOf(string);
                Atm kartu = ServiceAtm.getInstance().getById(id);
                out.println(kartu.getNoatm()+ "=   ");
                out.println(kartu.getTabungan().getSaldo());
            %></h1>
    </body>
</html>
