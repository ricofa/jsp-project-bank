<%-- 
    Document   : tellersimpanindex
    Created on : Apr 18, 2018, 12:13:14 AM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%
    String string = String.valueOf(session.getAttribute("RekLoginTeller"));
    Long id = Long.valueOf(string);
    Tabungan tabungan = ServiceTabungan.getInstance().getById(id);
    Long nominal = Long.valueOf(request.getParameter("uang"));
    
    tabungan.setSaldo(tabungan.getSaldo()+nominal);
    
    ServiceTabungan.getInstance().update(tabungan, id); 

    response.sendRedirect("listab.jsp");
%>
