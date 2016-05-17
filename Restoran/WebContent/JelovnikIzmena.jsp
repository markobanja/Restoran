<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="model.Jelovnik" %>
<%@page import="dao.JelovnikDAO" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cssfajl.css">
<link rel="stylesheet" href="cssNavigation.css">
<link rel="stylesheet" href="cssfajl.css">
</head>
<%
int id = Integer.parseInt(request.getParameter("id"));
String naziv= request.getParameter("naziv");
String opis= request.getParameter("opis");
String cena= request.getParameter("cena");


/*KartaPicaDAO kartaDAO = new KartaPicaDAO();
KartaPica kartaPica = kartaDAO. GetKartaPicaById(id);
String prezime = kartaPica.getNaziv();*/
%>
<body>
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
<br>
<br>
<div class="IzmeniPon">
	<form action="JelovnikSacuvajServlet">
		<table>
			<tr>
				<input value="<%=naziv%>" name="naziv" /><br>
				<br>
				<input value="<%=opis%>" name="opis" /><br>
				<br>
				<input value="<%=cena%>" name="cena" /><br>
				<br>
				
			</tr>
		</table>
		<input type="hidden" value="<%=id %>" name="id">
		<input class="mojeDugme" style=margin-left:20px; type="submit" value="Sacuvaj" name="sacuvaj">
	</form>
		</div>
		<br>
	<a class="mojeDugme" style=margin-left:565px; type="submit" href="Jelovnik.jsp?naziv=<%=naziv%>">Odustani</a>
</body>
</head>