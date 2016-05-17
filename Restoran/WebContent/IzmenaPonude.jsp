<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.MenadzerRestoranaDao" %>
<%@page import="model.MenadzerRestorana" %>
<%@page import="dao.PonudaDAO" %>
<%@page import="model.Namirnice" %>
<%@page import="java.util.List" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Marko Proba -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"  href="css.css" />
<link rel="stylesheet" href="cssNavigation.css">
<link rel="stylesheet" href="cssfajl.css">
</head>
<body style="background:white">
<%
PonudaDAO ponudaDAO = new PonudaDAO();
List<Namirnice> namirnice = ponudaDAO.prikazSvihNamirnica();
String id = request.getParameter("id");
%>
<%String email=request.getParameter("email");%>
<nav class="navigation1">
	<ul class="navlista1">
		<li class="navitem1"><a href="PonudjacProfil.jsp?email=<%=email%>" class="navtekst1">Profil</a></li>
		<li class="navitem1">
            <a href="#" class="navtekst1">Izmeni:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="#" class="navtekst1">Izmeni ponudu</a></li>
            </ul>
        </li>
		<li class="navitem1">
            <a href="#" class="navtekst1">Spisak:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="PrikazNamirnicaCena.jsp?email=<%=email%>" class="navtekst1">Spisak ponuda</a></li>
            </ul>
        </li>
        <li class="navitem1">
            <a href="#" class="navtekst1">Obavestenja:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="#" class="navtekst1">Obavestenje o prihvatanju ponude</a></li>
                <li><a href="#" class="navtekst1">Obavestenje o neprihvatanju ponude</a></li>
            </ul>
        </li>
        <li style=float:right; class="navitem1"><a href="login.html" class="navtekst1">Odjavi se</a></li>
	</ul>
</nav>
<div>
<br>
<br>
<br>
<br>
		<table border="1" style="margin-left:550px">
		<tr><td>Naziv:</td><td>Kolicina:</td></tr>
		<form action="SacuvajCenuServlet">
		<%for (Namirnice n:namirnice) {%>
			<tr>
			<td>
				<%=n.getNaziv()%>
				</td>
				<td>
				<%=n.getKolicina()%>
				</td>
			</tr>
				<input type="hidden" name="id" value="<%=n.getIdNamirnicaPica()%>">
				<input type="hidden" name="email" value="<%=email%>">
			</tr>
			<%} %>
			</form>
		</table>
		
		<input type="hidden" value="<%=id%>" name="id">
	
		</div>
		<br>
</body>
</html>