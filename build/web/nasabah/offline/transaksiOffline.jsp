<%-- 
    Document   : transaksiOffline
    Created on : Apr 14, 2018, 12:22:47 PM
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
        <h3>Transaksi Offline</h3>
        <h2> Pilih Menu Transaksi </h2>
        <div class="login-page">
        <div class="form">
        
            <input type="submit" value="ATM" onclick="window.location = 'loginATM.jsp';"/>
            <input type="submit" value="Teller" onclick="window.location = 'loginTeller.jsp';"/>
        
        </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </body>
</html>
