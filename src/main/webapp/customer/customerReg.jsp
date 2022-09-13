<%@page import="icbt.Customer"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%
    UserService_Service user_service = new UserService_Service();
    UserService proxy = user_service.getUserServicePort();
    Customer customer = new Customer();
    customer.setFName(request.getParameter("fName"));
    customer.setLname(request.getParameter("lName"));
    customer.setNic(request.getParameter("nic"));
    customer.setAddress1(request.getParameter("address1"));
    customer.setAddress2(request.getParameter("address2"));
    customer.setEmail(request.getParameter("email"));
    customer.setUsername(request.getParameter("username"));
    customer.setPassword(request.getParameter("password"));
    customer.setMobile(Integer.parseInt(request.getParameter("mobile")));
    proxy.addCustomer(customer);
    response.sendRedirect("../index.jsp");
                    
 %>
