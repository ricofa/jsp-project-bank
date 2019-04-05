<%-- 
    Document   : delnasabah
    Created on : Apr 15, 2018, 10:48:54 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceNasabah"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    //boolean m = ServiceNasabah.getInstance().delete(n.getId());
    
    //if(m == true)
    if(ServiceNasabah.getInstance().delete(n.getId()) == true)
        response.sendRedirect("listNasabah.jsp");
%>
