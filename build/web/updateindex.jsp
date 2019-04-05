<%-- 
    Document   : updateindex
    Created on : Apr 15, 2018, 11:11:46 PM
    Author     : RICO
--%>

<%@page import="model.Nasabah"%>
<%@page import="service.admin.ServiceNasabah"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%
    String name = request.getParameter("nasabahName");
    Long id = Long.valueOf(request.getParameter("idNasabah"));
    Nasabah nasabah = new Nasabah();
    nasabah.setUser(name);
    nasabah.setId(id);
    //boolean result = ServiceNasabah.getInstance().update(nasabah, nasabah.getId());
    //if(result == true)
    if(ServiceNasabah.getInstance().update(nasabah, nasabah.getId()) == true)
        response.sendRedirect("listNasabah.jsp");
%>
