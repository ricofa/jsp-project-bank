<%-- 
    Document   : TransonlineSaldo
    Created on : Apr 17, 2018, 11:44:09 PM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cek Saldo</title>
    </head>
    <body>
        <h1>Saldo Anda : 
            <% 
                String stringOobject = String.valueOf(session.getAttribute("noRekTerpilih"));
                Long id = Long.parseLong(stringOobject);
                Tabungan tabungan = ServiceTabungan.getInstance().getById(id);
                out.println(tabungan.getUser()+ "= ");
                out.println(tabungan.getSaldo());
            %></h1>
    </body>
</html>
