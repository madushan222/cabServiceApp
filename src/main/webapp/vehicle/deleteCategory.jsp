<%@page import="icbt.VehicleServices"%>
<%@page import="icbt.VehicleServices_Service"%>
<%
    VehicleServices_Service user_service = new VehicleServices_Service();
    VehicleServices proxy = user_service.getVehicleServicesPort();
    proxy.deleteCategory(Integer.parseInt(request.getParameter("typeId")));
    response.sendRedirect("addCategory.jsp");
                    
 %>
