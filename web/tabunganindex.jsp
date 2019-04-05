<%-- 
    Document   : tabunganindex.jsp
    Created on : Apr 16, 2018, 8:57:50 PM
    Author     : RICO
--%>

<%@page import="model.Nasabah"%>
<%@page import="service.admin.ServiceNasabah" %>
<%@page import="model.Tabungan" %>
<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%
    String name = request.getParameter("user");
    String password = request.getParameter("pass");
    Long saldo = Long.parseLong(request.getParameter("saldo"));
    Long id = Long.parseLong(request.getParameter("idNas"));
    Nasabah nasabah = ServiceNasabah.getInstance().getById(id);
    
    Tabungan tab = new Tabungan();
    tab.setUser(name);
    tab.setPass(password);
    tab.setSaldo(saldo);
    ServiceTabungan.getInstance().register(tab, id);
    response.sendRedirect("listab.jsp");
%>
