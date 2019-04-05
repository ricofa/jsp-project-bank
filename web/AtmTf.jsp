<%-- 
    Document   : AtmTf
    Created on : Apr 18, 2018, 1:46:18 PM
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
       <h1>Form Transfer Uang ATM</h1>
            <form action="AtmTfindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rek Tujuan</td>
                        <td> : <input type="number" name="rekTujuan"></td>
                    </tr>
                    <tr>
                        <td>Jumlah Transfer</td>
                        <td> : <input type="number" name="jumTf"></td>
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
