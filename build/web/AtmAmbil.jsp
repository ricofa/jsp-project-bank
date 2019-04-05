<%-- 
    Document   : AtmAmbil
    Created on : Apr 18, 2018, 1:49:27 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceAtm"%>
<%@page import="model.Atm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
                String string = String.valueOf(session.getAttribute("LoginAtm"));
                Long id = Long.valueOf(string);
                Atm kartu = ServiceAtm.getInstance().getById(id);
               
            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Ambil Uang ATM</title>
    </head>
    <body>
        <center>
            <h1>Form ATM Ambil Uang <% out.println(kartu.getJenisatm().toString()); %></h1>
            <form action="AtmAmbilindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nominal Uang</td>
                        <td> : <input type="numer" name="nominal"></td>
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
