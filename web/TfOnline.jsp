<%-- 
    Document   : TfOnline
    Created on : Apr 17, 2018, 11:44:32 PM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%
    //Tabungan tabungan = TabunganService.getInstance().getById(t.getRekening());
    //session.getAttribute("noRekTerpilih");
    //out.println();
    //Nasabah orang = NasabahService.getInstance().getById(n.getId());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Online</title>
    </head>
    <body>
        <h1>Rekening ku <%= session.getAttribute("noRekTerpilih") %> </h1>
        <center>
            <form action="TfOnlineIndex.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rek Tujuan</td>
                        <td> : <input type="number" name="rekTujuan"></td>
                    </tr>
                    <tr>
                        <td>Jumlah Transfer</td>
                        <td> : <input type="number" name="totalTransfer"></td>
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
