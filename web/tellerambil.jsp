<%-- 
    Document   : tellerambil
    Created on : Apr 18, 2018, 12:12:36 AM
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
            <h1>Form Teller Ambil Uang</h1>
            <form action="tellerambilindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nominal Uang</td>
                        <td> : <input type="number" name="ambil"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
