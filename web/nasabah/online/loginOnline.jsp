<%-- 
    Document   : loginOnline
    Created on : Apr 14, 2018, 12:15:26 PM
    Author     : Amel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <h2> Welcome To Page Nasabah</h2> 
        <h3>Transaksi Online</h3>
        <div class="login-page">
        <div class="form">

            <input type="text" placeholder="username"/>
            <input type="text" placeholder="password"/>
            <input type="submit" value="login" onclick="window.location = 'transaksiOnline.jsp';"/>
            <p><a href ="">forgot password?</a></p>

        </div>
            
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </body>
</html>
