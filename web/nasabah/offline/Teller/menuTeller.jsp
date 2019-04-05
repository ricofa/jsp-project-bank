<%-- 
    Document   : menuTeller
    Created on : Apr 14, 2018, 12:19:13 PM
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
        <h3>Transaksi Melalui Teller</h3>
        <h2> Pilih Menu Transaksi </h2>
        <div class="login-page">
        <div class="form">

            <input type="submit" value="Transfer" onclick="window.location = 'transferTeller.jsp';"/>
            <input type="submit" value="Ambil Uang" onclick="window.location = 'ambilUangTeller.jsp';"/>
            <input type="submit" value="Simpan Uang" onclick="window.location = 'simpanUangTeller.jsp';"/>
            <input type="submit" value="Cek Saldo"/>

        </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </body>
</html>
