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
                <center><h3><strong>Admin Registration</strong></h3></center>
            </div>
            <hr>
                <form action="admin_process.jsp" method="POST">
                   <div class="row"> 
                       <div class="col-md-6"> 
                        <div class="form-group">
                          <label for="fName">First Name:</label>
                          <input type="text" class="form-control" name="fName" id="fName" autocomplete="off" required>
                        </div>
                       </div>
                       <div class="col-md-6"> 
                        <div class="form-group">
                          <label for="lName">Last Name:</label>
                          <input type="text" class="form-control" name="lName" id="lName" autocomplete="off" required>
                        </div>
                       </div>
                   </div>
                     <div class="form-group">
                      <label for="nic">NIC</label>
                      <input type="text" class="form-control" name="nic" id="nic" autocomplete="off" required>
                    </div>
                     <div class="form-group">
                      <label for="dob">DOB</label>
                      <input type="text" class="form-control" name="dob" id="dob" autocomplete="off">
                    </div>
                    <div class="form-group">
                      <label for="mobile">Mobile</label>
                      <input type="number" class="form-control" name="mobile" id="mobile" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" name="email" id="email" autocomplete="off" required> 
                    </div>
                    <div class="form-group">
                      <label for="username">Username</label>
                      <input type="text" class="form-control" name="username" id="username" autocomplete="off" required> 
                    </div>
                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" class="form-control" name="password"  id="password" autocomplete="off" required> 
                    </div>
                    <div class="form-group">
                      <label for="branch">Branch</label>
                      <input type="text" class="form-control" name="branch" id="branch" autocomplete="off" required> 
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-warning">Clear</button>
                </form> 
            
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>DOB</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Branch</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        UserService_Service user_service = new UserService_Service();
                        UserService proxy = user_service.getUserServicePort();
                        List<Admin> admins = proxy.getAdmins();
                        for(Admin adm : admins){%>
                        <tr>
                            <tbody>
                            <td><%out.println(adm.getFName());%> <%out.println(adm.getLname());%></td>
                            <td><%out.println(adm.getDob());%></td>
                            <td><%out.println(adm.getEmail());%></td>
                            <td><%out.println(adm.getMobile());%></td>
                            <td><%out.println(adm.getBranchId());%></td>
                            </tbody>
                        </tr>
                        <%}
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>

