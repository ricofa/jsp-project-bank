<%-- 
    Document   : tambahnas
    Created on : Apr 15, 2018, 3:43:31 PM
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
            <h1>Create Nasabah</h1>
            <form action="tambahindex.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nama Nasabah</td>
                        <td> : <input type="text" name="userName"></td>
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
