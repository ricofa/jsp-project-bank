<%-- 
    Document   : tellerambilindex
    Created on : Apr 18, 2018, 12:12:48 AM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%
    String string = String.valueOf(session.getAttribute("RekLoginTeller"));
    Long id = Long.valueOf(string);
    Tabungan tabungan = ServiceTabungan.getInstance().getById(id);
    Long uang = Long.valueOf(request.getParameter("ambil"));
    
    tabungan.setSaldo(tabungan.getSaldo()-uang);
    
    ServiceTabungan.getInstance().update(tabungan, id); 

    response.sendRedirect("listab.jsp");
%>
