<%-- 
    Document   : booknow
    Created on : 22 Aug 2022, 18:51:14
    Author     : shanr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Now</title>
        <script>
            $( function() {
              $( "#datepicker" ).datepicker();
            } );
        </script>
    </head>
    <body>
        <jsp:include page="sidebar.jsp" />
        <div class="main">
               <div class="col-md-4">    
                    <div class="form-group">
                      <label for="email">Select Vehicle Type</label>
                      <select id="vehicle_type" class="form-control" name="vehicle_type">
                          <option>Car</option>
                          <option>Van</option>
                          <option>Bus</option>
                      </select>
                    </div>
            </div>
        </div>
    </body>
</html>
