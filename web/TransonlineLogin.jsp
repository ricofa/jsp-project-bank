<%-- 
    Document   : TransonlineLogin
    Created on : Apr 17, 2018, 11:43:52 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>

<%
    String name = request.getParameter("user");
    String pass = request.getParameter("pass");
    
      Tabungan tabungan = new Tabungan();
      Tabungan tab = new Tabungan();
      tabungan.setUser(name);
      tabungan.setPass(pass);
//    if(NasabahService.getInstance().login(nasabah) == null)
//        response.sendRedirect("gagalLoginOnline.jsp");
    
      tab = ServiceTabungan.getInstance().login(tabungan);
      //out.println(tabunganNew.getRekening()+"|");
      session.setAttribute("noRekTerpilih", Long.valueOf(tab.getRekening()));
      
%>

<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <center>
            <h1>Selamat Datang <% out.println(tab.getUser()); %> </h1>
            <a href="TransonlineSaldo.jsp">Cek Saldo</a>
            <a href="TfOnline.jsp">Transfer Online</a>
        </center>
    </body>
</html>
