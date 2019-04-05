<%-- 
    Document   : tellertfindex
    Created on : Apr 18, 2018, 12:12:16 AM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<%
    Long rektujuan = Long.valueOf(request.getParameter("rekTujuan"));
    Long jumtf = Long.valueOf(request.getParameter("jumTF"));
    String string = String.valueOf(session.getAttribute("RekLoginTeller"));
    Long idRekPengirim = Long.valueOf(string);
    
    Tabungan tabPenerima = ServiceTabungan.getInstance().getById(rektujuan);
    Tabungan tabPengirim =  ServiceTabungan.getInstance().getById(idRekPengirim);
    
    out.println("rekening tujuan : "+tabPenerima.getUser()+"  rekening pengirim : " + tabPengirim.getUser());
    
    tabPenerima.setSaldo((tabPenerima.getSaldo()+jumtf));
    tabPengirim.setSaldo(tabPengirim.getSaldo()-jumtf);
    
    ServiceTabungan.getInstance().update(tabPenerima, tabPenerima.getRekening());
    ServiceTabungan.getInstance().update(tabPengirim, tabPengirim.getRekening());
    
    response.sendRedirect("listab.jsp");
%>
