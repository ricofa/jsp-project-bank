<%-- 
    Document   : Atmlogin
    Created on : Apr 18, 2018, 1:45:08 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceAtm"%>
<%@page import="model.Atm"%>
<%
    Long noKartu = Long.valueOf(request.getParameter("nocard"));
    Long pin = Long.valueOf(request.getParameter("pass"));
    
    Atm kartu = new Atm();
    //Atm kartu2 = new Atm();
    
    kartu.setNoatm(noKartu);
    kartu.setPin(pin);
    
    //kartu2 = ServiceAtm.getInstance().login(kartu);
    
    session.setAttribute("LoginAtm", 
            ServiceAtm.getInstance().login(kartu).getNoatm());
    
    if(ServiceAtm.getInstance().login(kartu) != null)
        response.sendRedirect("AtmLoginsukses.jsp");
    else
        response.sendRedirect("AtmLoginfailed.jsp");
%>
