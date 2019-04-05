<%-- 
    Document   : AtmSimpanindex
    Created on : Apr 18, 2018, 1:50:09 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceAtm"%>
<%@page import="model.Atm"%>
<%
    String string = String.valueOf(session.getAttribute("LoginAtm"));
    Long id = Long.valueOf(string);
    
    Atm kartu = ServiceAtm.getInstance().getById(id);
    
    Long uang = Long.valueOf(request.getParameter("uang"));
    
    Tabungan tabungan = kartu.getTabungan();
    tabungan.setSaldo(tabungan.getSaldo()+uang);
    
    kartu.setTabungan(tabungan);
    out.println(kartu.getTabungan().getSaldo());
    
    ServiceTabungan.getInstance().update(tabungan, kartu.getTabungan().getRekening());
    ServiceAtm.getInstance().update(kartu, id);
    
    
    response.sendRedirect("listab.jsp");
%>
