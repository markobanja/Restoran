<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.RestoranNaziv" %>
<%@page import="dao.RestoranNazivDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cssfajl.css">
<link rel="stylesheet" href="cssNavigation.css">
<link rel="stylesheet" href="cssfajl.css">
</head>
<body>


<%
int id = 1;
RestoranNazivDAO restDAO = new RestoranNazivDAO();
RestoranNaziv restoran = null;
RestoranNaziv restoranNaziv = restDAO.getRestoranNazivByID(id);
restoran = restoranNaziv;

String nazivRest = restoran.getNazivRest();
String vrstaRest = restoran.getVrstaRest();
String jelovnik = restoran.getJelovnik();
String kartaPica = restoran.getKartaPica();
int idRestorana = restoran.getId();
%>
<%String email=request.getParameter("email");%>
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
                <li><a href="OdabirPonude.jsp?email=<%=email%>" class="navtekst1">Odabir ponude</a></li>
            </ul>
        </li>
        <li class="navitem1"><a href="login.html" class="navtekst1">Odjavi se</a></li>
	</ul>
</nav>
<br>
<br>
<br>
<div class="menRes">
		<img alt="slika" src="restoran.jpg" class="profilRestoranNaziv" style=width:600px;margin-left:340px>
		</div>
		<div class="restoranData">
			<div>
				<table style=margin-left:10px>
					<tr >
						<td class="profil">Naziv restorana: <%=nazivRest%></td>
					</tr>
					<tr >
						<td class="profil">Vrsta restorana: <%=vrstaRest%></td>
					</tr>
					<tr>
						<td class="profil">Jelovnik: <%=jelovnik%></td>
					</tr>
					<tr>
						<td class="profil">Karta pica: <%=kartaPica%></td>
					</tr>
				</table>
			</div>
			
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<a class="mojeDugme" style=margin-left:635px href="RestoranIzmena.jsp?id=<%=idRestorana%>&naziv=<%=nazivRest%>&vrsta=<%=vrstaRest%>">Izmeni</a>
</body>
</html>