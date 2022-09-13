<%@page import="icbt.Vehicle"%>
<%@page import="icbt.VehicleServices_Service"%>
<%@page import="icbt.VehicleServices"%>
<%
    VehicleServices_Service vehicle_service = new VehicleServices_Service();
    VehicleServices proxy = vehicle_service.getVehicleServicesPort();
    Vehicle category = new Vehicle();
    category.setCategory(request.getParameter("category"));
    proxy.addCategory(category);
    response.sendRedirect("addCategory.jsp");
                    
 %>
