<%-- 
    Document   : customerData.jsp
    Created on : 13 Sept 2022, 10:26:06
    Author     : shanr
--%>

<%@page import="icbt.Customer"%>
<%@page import="java.util.List"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Details</title>
        <script>
            $( function() {
              $( "#datepicker" ).datepicker();
            } );
        </script>
    </head>
    <body>
        <jsp:include page="../admin/adminSidebar.jsp" />
        <div class="main">
            <div class="form-title">
                <center><h3><strong>Customer Details</strong></h3></center>
            </div>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>NIC</th>
                        <th>Address</th>
                        <th>Mobile</th>
                        <th>E-Mail</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        UserService_Service user_service = new UserService_Service();
                        UserService proxy = user_service.getUserServicePort();
                        List<Customer> customers = proxy.getCustomers();
                        int row = 0;
                        for(Customer csm : customers){%>
                        <tr <%if(row%2 == 0){%> class="info" <%}%>>
                            <tbody>
                            <td><%out.println(csm.getFName());%> <%out.println(csm.getLname());%></td>
                            <td><%out.println(csm.getNic());%></td>
                            <td><%out.println(csm.getAddress1());%>,<%out.println(csm.getAddress2());%></td>
                            <td><%out.println(csm.getMobile());%></td>
                            <td><%out.println(csm.getEmail());%></td>
                            <td><%%><a href="editCustomer.jsp?userId=<%out.println(csm.getUserId());%>" title="Edit"><i class="fa fa-pencil"></i></a></td>
                            <td><a href="../common/deleteUser.jsp?userType=CUSTOMER&userId=<%out.println(csm.getUserId());%>" title="Delete"><i class="fa fa-trash" style="color:red;"></i></a></td>
                            </tbody>
                        </tr>
                        <%}
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>

