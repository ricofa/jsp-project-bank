<%-- 
    Document   : tellerLogin
    Created on : Apr 18, 2018, 12:10:29 AM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%
    Long noRek = Long.valueOf(request.getParameter("norek")); 
    String pass = request.getParameter("pass");
    
    Tabungan tabungan = new Tabungan();
    //Tabungan tab = new Tabungan();
    
    tabungan.setRekening(noRek);
    tabungan.setUser(ServiceTabungan.getInstance().getById(noRek).getUser());
    tabungan.setPass(pass);
    
    //tab = ServiceTabungan.getInstance().login(tabungan);
    
    session.setAttribute("RekLoginTeller", 
            ServiceTabungan.getInstance().login(tabungan).getRekening());
    
    if(ServiceTabungan.getInstance().login(tabungan) != null)
        response.sendRedirect("tloginSukses.jsp");
    else
        response.sendRedirect("tloginFailed.jsp");
    
%>
