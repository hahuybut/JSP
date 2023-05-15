<%--
  Created by IntelliJ IDEA.
  User: HA HUY BUT
  Date: 15/05/2023
  Time: 2:43 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<%
    //read form data
    String userName = request.getParameter("userName");
    String passWord = request.getParameter("passWord");

    //create the cookie
    Cookie theCookie1 = new Cookie("myApp.userName", userName);
    Cookie theCookie2 = new Cookie("myApp.passWord", passWord);

    //set the life span ... total number of seconds (yuk!)
    theCookie1.setMaxAge(60*60*24);//<-- for one day
    theCookie2.setMaxAge(60*60*24);

    //send cookie to browser
    response.addCookie(theCookie1);
    response.addCookie(theCookie2);
%>
<body>
<form action="DemoFormLogin.jsp">
    Username: <input type="text" name="userName">
    <br/><br/>
    Password: <input type="text" name="passWord" />
    <br/><br/>
    <input type="submit" value="Submit" />
</form>
</body>
</html>
