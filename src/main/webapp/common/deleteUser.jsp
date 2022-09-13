<%@page import="icbt.Admin"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%
    UserService_Service user_service = new UserService_Service();
    UserService proxy = user_service.getUserServicePort();
    String type = request.getParameter("userType");
    proxy.deleteUser(Integer.parseInt(request.getParameter("userId")));
    if(type.equals("ADMIN"))
     response.sendRedirect("../admin/addAdmin.jsp");
    else if(type.equals("CUSTOMER"))
     response.sendRedirect("../customer/customerData.jsp");
                    
 %>
