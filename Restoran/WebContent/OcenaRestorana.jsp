<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.OcenaUsluge" %>
<%@page import="dao.OcenaUslugeDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="cssNavigation.css">
<link rel="stylesheet" href="cssfajl.css">
</head>
<%
String email = request.getParameter("email");

OcenaUslugeDao uslugaDao = new OcenaUslugeDao();
double ocenaUsluge1 = uslugaDao.getProsekJelo();
double ocenaUsluge2 = uslugaDao.getProsekPice();
double ocenaUsluge3 = uslugaDao.getProsekRestoran();
%>
<body>
<input type="hidden" value=<%=email%> name="email">
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
                <li><a href="#" class="navtekst1">Raspored i reon rada</a></li>
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
        <li class="navitem1">
            <a href="#" class="navtekst1">Prikaz:</a>
            <br>
            <ul class="dropdown1">
            	<li><a href="Pazar.jsp?email=<%=email%>" class= "navtekst1">Prihod restorana</a></li>
                <li><a href="OcenaRestorana.jsp?email=<%=email%>"  class="navtekst1">Ocena</a></li>
                <li><a href="#"  class="navtekst1">Grafik posecenosti(dnevno i nedeljno)</a></li>
                <li><a href="Konobari.jsp?email=<%=email%>"  class="navtekst1">Prikaz konobara</a></li>                
            </ul>
        </li>
        <li style=float:right; class="navitem1"><a href="login.html" class="navtekst1">Odjavi se</a></li>
	</ul>
</nav>
	<div class="menResPon">
		<!-- <img alt="slika" src="ponudjac.png" class="profilPon"> -->
		
		</div>
		
		<div class="marko">
			<div>
			
				<table bordercolor="black  "  border="1" style=margin-left:420px;margin-top:70px;font-size:25px;background:#c2d6d6  >
					<tr>
						<td colspan="4" style="text-align: center;" class="tabelastil">Prosek ocena:</td>
					</tr>
					<tr >
						<td class="tabelastil">Jelo</td>
						<td class="tabelastil">Pice</td>
						<td class="tabelastil">Restoran</td>
					</tr>
					<tr>
						<td><%=ocenaUsluge1%></td>
						<td><%=ocenaUsluge2%></td>
						<td><%=ocenaUsluge3%></td>
					</tr>
					<tr>
						<td><meter value="<%=ocenaUsluge1%>" min="0" max="5"></meter></td>
						<td><meter value="<%=ocenaUsluge2%>" min="0" max="5"></meter></td>
						<td><meter value="<%=ocenaUsluge3%>" min="0" max="5"></meter></td>
					</tr>	
				</table>
			</div>
		</div>
</body>
</html>