<%-- 
    Document   : tambahindex
    Created on : Apr 15, 2018, 3:44:36 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceNasabah"%>
<%@page import="model.Nasabah"%>
<%
    String name = request.getParameter("userName");
    Nasabah nasabah = new Nasabah();
    nasabah.setUser(name);
    ServiceNasabah.getInstance().register(nasabah);
    response.sendRedirect("listNasabah.jsp");
%>
