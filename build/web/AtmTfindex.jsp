<%-- 
    Document   : AtmTfindex
    Created on : Apr 18, 2018, 1:49:06 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceAtm"%>
<%@page import="model.Atm"%>
<%
    Long rekTujuan = Long.valueOf(request.getParameter("rekTujuan"));
    Long jumTransfer = Long.valueOf(request.getParameter("jumTf"));
    
    String string = String.valueOf(session.getAttribute("LoginAtm"));
    Long id = Long.valueOf(string);
    
    Atm kartuPengirim = ServiceAtm.getInstance().getById(id);
    
    Tabungan tabPenerima = ServiceTabungan.getInstance().getById(rekTujuan);
    Tabungan tabPengirim =  ServiceTabungan.getInstance().getById(kartuPengirim.getTabungan().getRekening());
    
    out.println("rekening tujuan : "+tabPenerima.getUser()+"  rekening pengirim : " + tabPengirim.getUser());
    
    tabPenerima.setSaldo((tabPenerima.getSaldo()+jumTransfer));
    tabPengirim.setSaldo(tabPengirim.getSaldo()-jumTransfer);
    
    ServiceTabungan.getInstance().update(tabPenerima, tabPenerima.getRekening());
    ServiceTabungan.getInstance().update(tabPengirim, tabPengirim.getRekening());
    
    response.sendRedirect("listab.jsp");
%>
