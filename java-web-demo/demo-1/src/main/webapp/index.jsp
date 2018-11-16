<%@ page language="java"  %>

<html>
<body>
<h2>Hello World!</h2>
<%
    out.println(" Client IP: "+ request.getRemoteHost() +"<br/>");
    out.println(" Server IP: "+request.getLocalAddr()); 
%>
</body>
</html>