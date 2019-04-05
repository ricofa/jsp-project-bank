<%-- 
    Document   : atmaddindex
    Created on : Apr 17, 2018, 9:45:21 PM
    Author     : RICO
--%>

<%@page import="model.Nasabah"%>
<%@page import="model.Tabungan"%>
<%@page import="model.Atm"%>
<%@page import="service.admin.ServiceNasabah"%>
<%@page import="service.admin.ServiceTabungan"%>
<%@page import="service.admin.ServiceAtm"%>
<%
      Long rek = Long.parseLong(request.getParameter("norek"));
      String jenis = request.getParameter("type");
      Long pin = Long.valueOf(request.getParameter("pin"));
      
      Tabungan tab = ServiceTabungan.getInstance().getById(rek);
      Atm kartu = new Atm();
      
      kartu.setTabungan(tab);
      kartu.setPin(pin);
      
      if(jenis.equalsIgnoreCase(kartu.getJenisatm().GOLD.toString()))
        kartu.setJenisatm(kartu.getJenisatm().GOLD);
      if(jenis.equalsIgnoreCase(kartu.getJenisatm().PLATINUM.toString()))
        kartu.setJenisatm(kartu.getJenisatm().PLATINUM);
      if(jenis.equalsIgnoreCase(kartu.getJenisatm().SILVER.toString()))
        kartu.setJenisatm(kartu.getJenisatm().SILVER);
    
      //boolean result = ServiceAtm.getInstance().register(kartu);
    
    //if(result == true)
        if(ServiceAtm.getInstance().register(kartu) == true)
        response.sendRedirect("listAtm.jsp");
%>