<%-- 
    Document   : tellertf
    Created on : Apr 18, 2018, 12:12:03 AM
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
        <h1>Rekening ku <%= session.getAttribute("RekLoginTeller") %> </h1>
        <center>
            <form action="tellertfindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rek Tujuan</td>
                        <td> : <input type="number" name="rekTujuan"></td>
                    </tr>
                    <tr>
                        <td>Jumlah Transfer</td>
                        <td> : <input type="number" name="jumTF"></td>
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
