<%-- 
    Document   : Visitante
    Created on : 19/05/2024, 09:40:58 PM
    Author     : SebaxPC
--%>

<%
    String cookieName = "visitorName";
    String visitorName = "";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
            visitorName = cookie.getValue();
        }
    }
    if(!existeCookie)
        response.sendRedirect("Inicio.jsp");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido visitante</title>
    </head>
    <body>
        <h1>Hola <%=visitorName%></h1>
    </body>
</html>

