<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.MenadzerRestoranaDao" %>
<%@page import="model.MenadzerRestorana" %>
<%@page import="dao.PonudaDAO" %>
<%@page import="model.Ponuda" %>
<%@page import="model.Namirnice" %>
<%@page import="java.util.List" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"  href="css.css" />
<link rel="stylesheet" href="cssNavigation.css">
<link rel="stylesheet" href="cssfajl.css">
</head>
<body>
<%
PonudaDAO ponudaDAO = new PonudaDAO();
List<Namirnice> namirnice = ponudaDAO.prikazSvihNamirnica();
String id = request.getParameter("id");
String email=request.getParameter("email");
%>

<nav class="navigation1">
	<ul class="navlista1">
		<li class="navitem1"><a href="ManagerPage.jsp?email=<%=email%>" class="navtekst1">Profil</a></li>
		<li class="navitem1">
            <a href="#" class="navtekst1">Registracija:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="registracijaKonobara.jsp?email=<%=email%>" class="navtekst1">Konobar</a></li>
                <li><a href="registracijaKuvara.jsp?email=<%=email%>" class="navtekst1">Kuvar</a></li>
                <li><a href="registracijaSankera.jsp?email=<%=email%>" class="navtekst1">Sanker</a></li>
                <li><a href="registracijaPonudjaca.jsp?email=<%=email%>" class="navtekst1">Ponudjac</a></li>
            </ul>
        </li>
		<li class="navitem1">
            <a href="#" class="navtekst1">Definisanje:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="KartaPicaUnos.jsp?email=<%=email%>" class="navtekst1">Karta pica</a></li>
                <li><a href="JelovnikUnos.jsp?email=<%=email%>" class="navtekst1">Jelovnik</a></li>
                <li><a href="#" class="navtekst1">Raspored rada</a></li>
                <li><a href="#" class="navtekst1">Reon rada</a></li>
            </ul>
        </li>
        <li class="navitem1">
            <a href="#" class="navtekst1">Izmena:</a>
            <br>
            <ul class="dropdown1">
                <li><a href="Jelovnik.jsp?email=<%=email%>" class="navtekst1">Jelovnik</a></li>
                <li><a href="KartaPica.jsp?email=<%=email%>" class="navtekst1">Karta pica</a></li>
                <li><a href="RestoranNaziv.jsp?email=<%=email%>" class="navtekst1">Naziv i vrsta restorana</a></li>
            </ul>
        </li>
        <li class="navitem1">
            <a href="#" class="navtekst1">Ponuda:</a>
            <br>
            <ul class="dropdown1">
            	<li><a href="UnosPonudeRestorana.jsp?email=<%=email%>" class= "navtekst1">Unos namirnica i pica</a></li>
            	<li><a href="PrikazNamirnica.jsp?email=<%=email%>" class= "navtekst1">Prikaz potrebstina</a></li>
                <li><a href="OdabirPonude.jsp?email=<%=email%>" class="navtekst1">Odabir ponude</a></li>
            </ul>
        </li>
        <li style=float:right; class="navitem1"><a href="login.html" class="navtekst1">Odjavi se</a></li>
	</ul>
</nav>
<div>
<h1 style="margin-left:536px">Odabir ponude:</h1>
<br>
<br>
<br>
<br>
		<table border="3" style="margin-left:520px">
		<tr><td>Stikliraj:</td><td>Naziv:</td><td>Kolicina:</td><td>Cena:</td></tr>
		<form action="SacuvajCenuServlet">
		<%for (Namirnice n:namirnice) {%>
			<tr>
			<td>
			<input type="checkbox" id="blankCheckbox" value="<%=n.getIdNamirnicaPica()%>" name="idNamirnice">
			</td>
			<td>
				<%=n.getNaziv()%>
				</td>
				<td>
				<%=n.getKolicina()%>
				</td>
				<td>
				<%=n.getCena()%>
				</td>
			</tr>
				<input type="hidden" name="id" value="<%=n.getIdNamirnicaPica()%>">
				<input type="hidden" name="email" value="<%=email%>">
			</tr>
			<%} %>
			</form>
		</table>
		<input style="margin-left:585px" type="submit" value="Potvrda" class="centar">
		<input type="hidden" value="<%=id%>" name="id">
		
		</div>
		<br>
</body>
</html>