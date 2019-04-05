<%-- 
    Document   : AtmTrans
    Created on : Apr 18, 2018, 1:41:25 PM
    Author     : RICO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Transaksi ATM</h1>
            <form action="Atmlogin.jsp" method="post">
                <table>
                    <tr>
                        <td>No.Kartu ATM</td>
                        <td> : <input type="number" name="nocard"></td>
                    </tr>
                    <tr>
                        <td>PIN ATM</td>
                        <td> : <input type="password" name="pass"></td>
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
