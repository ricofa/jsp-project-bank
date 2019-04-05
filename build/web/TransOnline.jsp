<%-- 
    Document   : TransOnline
    Created on : Apr 17, 2018, 11:42:52 PM
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
        <h1>Transaksi Online</h1>
            <form action="TransonlineLogin.jsp" method="POST">
                <table>
                    <tr>
                        <td>UserName Tabungan</td>
                        <td> : <input type="text" name="user"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
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
