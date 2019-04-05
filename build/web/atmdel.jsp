<%-- 
    Document   : atmdel
    Created on : Apr 17, 2018, 9:45:56 PM
    Author     : RICO
--%>

<%@page import="service.admin.ServiceAtm"%>
        <%
            String string = String.valueOf(session.getAttribute("noatm"));
            Long del = Long.valueOf(string);
            
            out.println(del);
            
            //boolean result = ServiceAtm.getInstance().delete(del);
                         
            //if(result == true)
            if(ServiceAtm.getInstance().delete(del) == true){
                response.sendRedirect("listAtm.jsp");
            }
         %>
