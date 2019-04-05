<%-- 
    Document   : tabupdateindex
    Created on : Apr 17, 2018, 12:39:27 PM
    Author     : RICO
--%>

<%@page import="model.Tabungan"%>
<%@page import="service.admin.ServiceTabungan"%>
<%--<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>--%>

<%
    Long rekening = Long.parseLong(request.getParameter("norek"));
    String user = request.getParameter("userName");
    String pass = request.getParameter("pass");
    Long saldo = Long.parseLong(request.getParameter("saldo"));
    
    Tabungan tab = new Tabungan();
    
    tab.setRekening(rekening);
    tab.setUser(user);
    tab.setPass(pass);
    tab.setSaldo(saldo);
    //boolean result = ServiceTabungan.getInstance().update(tab, tab.getRekening());
    //if(result == true)
    if(ServiceTabungan.getInstance().update(tab, tab.getRekening()) == true)
        response.sendRedirect("listab.jsp");
%>
