<%-- 
    Document   : index.jsp
    Created on : 20 mars 2019, 16:02:09
    Author     : gai
--%>

<%@page import="ejb.ControleurRemote"%>
<%@page import="beans.beanRelais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
// création du bean relai en passant le nom JDNI de l’interface remote
beanRelais unBean = new beanRelais("ejb/mafal/controleur");
//récupération du proxy
ControleurRemote stub = (ControleurRemote) unBean.getProxy() ;
// appel d’une méthode quelconque
double resultat;
resultat=stub.divise(10, 3);
out.println("<p>resultat =" + resultat + "</p>");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
