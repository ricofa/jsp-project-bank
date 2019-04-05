<%-- 
    Document   : AtmAmbilindex
    Created on : Apr 18, 2018, 1:49:41 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceAtm"%>
<%@page import="model.Atm"%>
<%--<%@page import="model.kartuATM"%>--%>
<%@page import="service.admin.ServiceTabungan"%>
<%@page import="model.Tabungan"%>
<%
    String string = String.valueOf(session.getAttribute("LoginAtm"));
    Long id = Long.valueOf(string);
    
    Atm kartu = ServiceAtm.getInstance().getById(id);
    
    Long uang = Long.valueOf(request.getParameter("nominal"));
    Tabungan tabungan = kartu.getTabungan();
    
    try{
        if(uang <= kartu.limitCard(kartu.getJenisatm())){
            tabungan.setSaldo(tabungan.getSaldo()-uang);
        
            ServiceTabungan.getInstance().update(tabungan, kartu.getTabungan().getRekening());
            ServiceAtm.getInstance().update(kartu, id);

            response.sendRedirect("listab.jsp");
        }
            
    }catch(Exception e){
        out.println(e);
        response.sendRedirect("AtmAmbil.jsp");
    }
    

    
    
        
    
%>
