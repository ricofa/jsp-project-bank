<%-- 
    Document   : menuAdmin
    Created on : Apr 14, 2018, 12:17:28 PM
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
        <h2> Welcome to Page Admin </h2>
        <h3> Pilih Menu</h3>
        <div class="login-page">
        <div class="form">
            <input type="submit" value="NASABAH" onclick="window.location = 'nasabah.jsp';"/>
            <input type="submit" value="TABUNGAN" onclick="window.location = 'tabungan.jsp';"/>
            <input type="submit" value="CREATE KARTU ATM" onclick="window.location = 'createATM.jsp';"/>
        </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </body>
</html>
