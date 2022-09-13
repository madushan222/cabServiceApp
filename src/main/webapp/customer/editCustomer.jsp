<%-- 
    Document   : addAdmin
    Created on : 12 Sept 2022, 13:25:13
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
        <title>Add Admin</title>
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
                <center><h3><strong>Edit Admin</strong></h3></center>
            </div>
            <hr>
              <%
                    UserService_Service user_service = new UserService_Service();
                    UserService proxy = user_service.getUserServicePort();
                    Customer customer = proxy.getCustomer(Integer.parseInt(request.getParameter("userId")));
                %>
                <form action="updateCustomerProcess.jsp?userId=<%out.println(request.getParameter("userId"));%>" method="POST">
                   <div class="row"> 
                       <div class="col-md-4"> 
                        <div class="form-group">
                          <label for="fName">First Name:</label>
                          <input type="text" class="form-control" name="fName" id="fName" value="<%out.println(customer.getFName());%>" autocomplete="off" required>
                        </div>
                       </div>
                       
                       <div class="col-md-4"> 
                        <div class="form-group">
                          <label for="lName">Last Name:</label>
                          <input type="text" class="form-control" name="lName" id="lName" value="<%out.println(customer.getLname());%>" autocomplete="off" required>
                        </div>
                       </div>
                       
                       <div class="col-md-4"> 
                        <div class="form-group">
                         <label for="nic">NIC</label>
                         <input type="text" class="form-control" name="nic" id="nic" value="<%out.println(customer.getNic());%>" autocomplete="off" required>
                       </div>
                       </div>
                   </div>
                    
                   <div class="row">
                       <div class="col-md-4"> 
                        <div class="form-group">
                         <label for="address1">Address1</label>
                         <input type="text" class="form-control" name="address1" id="address1" value="<%out.println(customer.getAddress1());%>" autocomplete="off">
                       </div>
                       </div>
                       
                       <div class="col-md-4"> 
                        <div class="form-group">
                         <label for="address2">Address2</label>
                         <input type="text" class="form-control" name="address2" id="address2" value="<%out.println(customer.getAddress2());%>" autocomplete="off">
                       </div>
                       </div>
                       
                       <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="mobile">Mobile</label>
                              <input type="text" class="form-control" name="mobile" id="mobile" value="<%out.println(customer.getMobile());%>" autocomplete="off" required>
                            </div>
                         </div>
                   </div>
                    
                    <div class="row">
                        
                        <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="email">Email</label>
                              <input type="email" class="form-control" name="email" id="email" value="<%out.println(customer.getEmail());%>" autocomplete="off" required> 
                            </div>
                        </div> 
                            
                        <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="username">Username</label>
                              <input type="text" class="form-control" name="username" id="username" value="<%out.println(customer.getUsername());%>" autocomplete="off" required> 
                            </div>
                        </div>
                        
                        <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="password">Password</label>
                              <input type="password" class="form-control" name="password"  id="password" value="<%out.println(customer.getPassword());%>" autocomplete="off" required> 
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form> 
        </div>
    </body>
</html>

<!--<script
type="text/javascript"
charset="utf8"
src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"
></script>
<script
type="text/javascript"
charset="utf8"
src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
$(function() {
$("#table_id").dataTable();
});
</script>-->