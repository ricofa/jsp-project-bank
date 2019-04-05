<%-- 
    Document   : atmadd
    Created on : Apr 17, 2018, 9:45:05 PM
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

<%@page import="model.Atm"%>
<%@page import="service.admin.ServiceAtm"%>
<jsp:useBean id="k" class="model.Atm"></jsp:useBean>
<jsp:setProperty property="*" name="a"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Tabungan tab = ServiceTabungan.getInstance().getById(t.getRekening());
            Atm jenisCard = new Atm();
            
        %>
        
        <center>
            <h1>Buat Kartu ATM</h1>
            <form action="atmaddindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rekening</td>
                        <td>: <input type="text" name="norek" value=""></td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td>: <input type="text" name="user" value=""> </td>
                    </tr>
                    <tr>
                        <td>Jenis ATM</td>
                        <td> : 
                            <select name="type">
                                <option value="<% out.print(jenisCard.getJenisatm().GOLD); %>"><% out.print(jenisCard.getJenisatm().GOLD); %></option>
                                <option value="<% out.print(jenisCard.getJenisatm().PLATINUM); %>"><% out.print(jenisCard.getJenisatm().PLATINUM); %></option>
                                <option value="<% out.print(jenisCard.getJenisatm().SILVER); %>"><% out.print(jenisCard.getJenisatm().SILVER); %></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>PIN</td>
                        <td>: <input type="number" name="pin"></td>
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
