<%-- 
    Document   : transaksiOnline
    Created on : Apr 14, 2018, 12:23:43 PM
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
        <h2> Welcome to Page Nasabah</h2>
        <h2>Transaksi Online</h2>
        <h3> Pilih Menu Transaksi</h3>
        <div class="login-page">
        <div class="form">

            <input type="submit" value="Transfer" onclick="window.location = 'transferOnline.jsp';"/>
            <input type="submit" value="Cek Saldo" onclick="window.location = 'transferOffline.jsp';"/>

        </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </body>
</html>
