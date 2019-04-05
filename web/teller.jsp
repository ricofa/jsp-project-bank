<%-- 
    Document   : TransTeller
    Created on : Apr 18, 2018, 12:09:46 AM
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
            <h1>Transaksi Teller</h1>
            <form action="tellerLogin.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nomor Rekening</td>
                        <td> : <input type="number" name="norek"></td>
                    </tr>
                    <tr>
                        <td>Password Rekening</td>
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
