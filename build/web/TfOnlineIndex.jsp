<%-- 
    Document   : TfOnlineIndex
    Created on : Apr 17, 2018, 11:44:45 PM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<%
    Long rTujuan = Long.valueOf(request.getParameter("rekTujuan"));
    Long tTransfer = Long.valueOf(request.getParameter("totalTransfer"));
    String string = String.valueOf(session.getAttribute("noRekTerpilih"));
    Long idRekeningPengirim = Long.valueOf(string);
    
    Tabungan tabunganPenerima = ServiceTabungan.getInstance().getById(rTujuan);
    Tabungan tabunganPengirim =  ServiceTabungan.getInstance().getById(idRekeningPengirim);
    
    out.println("rekening tujuan : "+tabunganPenerima.getUser()+"  rekening pengirim : " + tabunganPengirim.getUser());
    
    tabunganPenerima.setSaldo((tabunganPenerima.getSaldo()+tTransfer));
    tabunganPengirim.setSaldo(tabunganPengirim.getSaldo()-tTransfer);
    
    ServiceTabungan.getInstance().update(tabunganPenerima, tabunganPenerima.getRekening());
    ServiceTabungan.getInstance().update(tabunganPengirim, tabunganPengirim.getRekening());
    
    response.sendRedirect("listab.jsp");
%>
