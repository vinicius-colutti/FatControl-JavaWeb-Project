<%@page import="br.com.fatcontrol.Util.Data"%>
<%@page import="br.com.fatcontrol.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- C�DIGO JAVA JSP -->

<%

	Usuario us = new Usuario();
	us = (Usuario)session.getAttribute("usuario");

	
%>

<!-- FIM C�DIGO JAVA JSP -->

<div class="esquerda">
	
	<div class="conteudoEsquerdo">
		<h4 class="tituloMenuEsq">Seu perfil,  <%=us.getNome() %></h4>
		<p class="imgperfil">
			<img class="imgperfil" src="images/acdc.jpg" width="130"
				height="130">
		</p>
		<p class="destaque"><%= us.getNome()%></p>
		<p>
		<table class="tabelaPerfil">
			<tr>
				<td>Usu�rio:</td>
				<td><%= us.getNome()%></td>
			</tr>
			<tr>
				<td>Nascimento:</td>
				<td><%=Data.getDataPortugues((us.getDtNasc()))%></td>
			</tr>
			<tr>
				<td>Idade:</td>
				<td><%= us.getIdade() %></td>
			</tr>
			<tr>
				<td>Peso atual:</td>
				<td><%= us.getPeso()%></td>
			</tr>
			<tr>
				<td>Peso alvo:</td>
				<td><%= us.getPesoAlvo()%></td>
			</tr>
			<tr>
				<td>IMC:</td>
				<td><%= us.getImc() %></td>
			</tr>
			<tr>
				<td>IDR:</td>
				<td><%= us.getIdr() %></td>
			</tr>
		</table>
		<p></p>
	</div>
</div>