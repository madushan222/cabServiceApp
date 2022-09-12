<%-- 
    Document   : addAdmin
    Created on : 12 Sept 2022, 13:25:13
    Author     : shanr
--%>
<%@page import="java.util.List"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%@page import="icbt.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"-->
/>
        <title>Add Admin</title>
        <script>
            $( function() {
              $( "#datepicker" ).datepicker();
            } );
        </script>
    </head>
    <body>
        <jsp:include page="adminSidebar.jsp" />
        <div class="main">
            <div class="form-title">
                <center><h3><strong>Edit Admin</strong></h3></center>
            </div>
            <hr>
              <%
                    UserService_Service user_service = new UserService_Service();
                    UserService proxy = user_service.getUserServicePort();
                    Admin admin = proxy.getAdmin(Integer.parseInt(request.getParameter("userId")));
                %>
                <form action="updateAdminProcess.jsp?userId=<%out.println(request.getParameter("userId"));%>" method="POST">
                   <div class="row"> 
                       <div class="col-md-4"> 
                        <div class="form-group">
                          <label for="fName">First Name:</label>
                          <input type="text" class="form-control" name="fName" id="fName" value="<%out.println(admin.getFName());%>" autocomplete="off" required>
                        </div>
                       </div>
                       
                       <div class="col-md-4"> 
                        <div class="form-group">
                          <label for="lName">Last Name:</label>
                          <input type="text" class="form-control" name="lName" id="lName" value="<%out.println(admin.getLname());%>" autocomplete="off" required>
                        </div>
                       </div>
                       
                       <div class="col-md-4"> 
                        <div class="form-group">
                         <label for="nic">NIC</label>
                         <input type="text" class="form-control" name="nic" id="nic" value="<%out.println(admin.getNic());%>" autocomplete="off" required>
                       </div>
                       </div>
                   </div>
                    
                   <div class="row">
                       <div class="col-md-4"> 
                        <div class="form-group">
                         <label for="dob">DOB</label>
                         <input type="text" class="form-control" name="dob" id="dob" value="<%out.println(admin.getDob());%>" autocomplete="off">
                       </div>
                       </div>
                       
                       <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="mobile">Mobile</label>
                              <input type="text" class="form-control" name="mobile" id="mobile" value="<%out.println(admin.getMobile());%>" autocomplete="off" required>
                            </div>
                         </div>
                       
                       <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="email">Email</label>
                              <input type="email" class="form-control" name="email" id="email" value="<%out.println(admin.getEmail());%>" autocomplete="off" required> 
                            </div>
                        </div> 
                       
                   </div>
                    
                    <div class="row">
                        <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="username">Username</label>
                              <input type="text" class="form-control" name="username" id="username" value="<%out.println(admin.getUsername());%>" autocomplete="off" required> 
                            </div>
                        </div>
                        
                        <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="password">Password</label>
                              <input type="password" class="form-control" name="password"  id="password" value="<%out.println(admin.getPassword());%>" autocomplete="off" required> 
                            </div>
                        </div>
                        
                          <div class="col-md-4"> 
                            <div class="form-group">
                              <label for="branch">Branch</label>
                              <input type="text" class="form-control" name="branch" id="branch" value="<%out.println(admin.getBranchId());%>" autocomplete="off" required> 
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