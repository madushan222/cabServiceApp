<%@page import="icbt.Admin"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%
    UserService_Service user_service = new UserService_Service();
    UserService proxy = user_service.getUserServicePort();
    proxy.deleteAdmin(Integer.parseInt(request.getParameter("userId")));
    response.sendRedirect("addAdmin.jsp");
                    
 %>