<%-- 
    Document   : tabdel
    Created on : Apr 16, 2018, 9:36:38 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceNasabah"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>
<%@page import="service.admin.ServiceTabungan"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%
    out.println(n.getId());
    //boolean m = ServiceTabungan.getInstance().delete(n.getId());
    
    //if(m == true)
    if(ServiceTabungan.getInstance().delete(n.getId()) == true)
        response.sendRedirect("listab.jsp");
%>
