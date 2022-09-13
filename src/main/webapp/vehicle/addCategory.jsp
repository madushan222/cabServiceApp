<%-- 
    Document   : addAdmin
    Created on : 12 Sept 2022, 13:25:13
    Author     : shanr
--%>
<%@page import="icbt.VehicleServices"%>
<%@page import="icbt.VehicleServices_Service"%>
<%@page import="icbt.Vehicle"%>
<%
if(session.getAttribute("userType") == null || session.getAttribute("userType").equals(""))
{   
     response.sendRedirect("../index.jsp");
}
%>
<%@page import="java.util.List"%>
<%@page import="icbt.UserService"%>
<%@page import="icbt.UserService_Service"%>
<%@page import="icbt.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
    </head>
    <body>
        <jsp:include page="../admin/adminSidebar.jsp" />
        <div class="main">
            <div class="form-title">
                <center><h3><strong>Vehicle Categories</strong></h3></center>
            </div>
            <hr>
                <form action="categoryAddProcess.jsp" method="POST">
                   <div class="row"> 
                       <div class="col-md-4"> 
                        <div class="form-group">
                          <label for="category">Category:</label>
                          <input type="text" class="form-control" name="category" id="category" autocomplete="off" required>
                        </div>
                       </div>
                   </div>
                    <div class="row"> 
                         <div class="col-md-4"> 
                            <button type="submit" class="btn btn-primary">Add</button>
                            <button type="reset" class="btn btn-warning">Clear</button>
                         </div>
                    </div>
                </form> 
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Category</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        VehicleServices_Service vehicle_service = new VehicleServices_Service();
                        VehicleServices proxy = vehicle_service.getVehicleServicesPort();
                        List<Vehicle> categories = proxy.getCategories();
                        int row = 1;
                        for(Vehicle cat : categories){%>
                        <tr <%if(row%2 == 0){%> class="info" <%}%>>
                            <tbody>
                            <td><%out.println(row);%></td>
                            <td><%out.println(cat.getCategory());%></td>
                            <td><a href="deleteCategory.jsp?typeId=<%out.println(cat.getTypeId());%>" title="Delete"><i class="fa fa-trash" style="color:red;"></i></a></td>
                            </tbody>
                        </tr>
                        <%row++;}
                    %>
                </tbody>
            </table>
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