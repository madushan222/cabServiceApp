<%@page import="icbt.Login"%>
<%@page import="icbt.LoginService"%>
<%@page import="icbt.LoginService_Service"%>
<%
    LoginService_Service login_service = new LoginService_Service();
    LoginService proxy = login_service.getLoginServicePort();
    Login login = new Login();
    login.setUserName(request.getParameter("username"));
    login.setPassword(request.getParameter("password"));
    Login new_login = proxy.loginUser(login);
    if(!(new_login.getUserType().equals("NONE")))
    { 
        if(new_login.getUserType().equals("ADMIN"))
        {   
            session.setAttribute("userType",new_login.getUserType());
            response.sendRedirect("admin/adminSidebar.jsp");
        }
        else if(new_login.getUserType().equals("CUSTOMER"))
        {   
            session.setAttribute("userType",new_login.getUserType());
            response.sendRedirect("customer/sidebar.jsp");
        }
            
    }
    else
    {
       response.sendRedirect("index.jsp");
    }
   
                    
 %>