<%@page import="icbt.Admin"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%
    UserService_Service user_service = new UserService_Service();
    UserService proxy = user_service.getUserServicePort();
    Admin admin = new Admin();
    admin.setFName(request.getParameter("fName"));
    admin.setLname(request.getParameter("lName"));
    admin.setNic(request.getParameter("nic"));
    admin.setDob(request.getParameter("dob"));
    admin.setEmail(request.getParameter("email"));
    admin.setUsername(request.getParameter("username"));
    admin.setPassword(request.getParameter("password"));
    admin.setMobile(Integer.parseInt(request.getParameter("mobile")));
    admin.setBranchId(Integer.parseInt(request.getParameter("branch")));
    proxy.addAdmin(admin);
    response.sendRedirect("addAdmin.jsp");
                    
 %>