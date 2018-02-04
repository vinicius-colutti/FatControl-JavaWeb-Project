<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- CÓDIGO JAVA JSP -->

<%

	String nome = "Carl Fat";
	String dtNasc = "30/05/1974";

%>

<!-- FIM CÓDIGO JAVA JSP -->

<div class="esquerda">
	
	<div class="conteudoEsquerdo">
		<h4 class="tituloMenuEsq">Seu perfil</h4>
		<p class="imgperfil">
			<img class="imgperfil" src="images/carl.jpg" width="130"
				height="130">
		</p>
		<p class="destaque"><%= nome %></p>
		<p>
		<table class="tabelaPerfil">
			<tr>
				<td>Usuário:</td>
				<td><%= session.getAttribute("usuario") %></td>
			</tr>
			<tr>
				<td>Nascimento:</td>
				<td><%= dtNasc %></td>
			</tr>
			<tr>
				<td>Idade:</td>
				<td>42 anos</td>
			</tr>
			<tr>
				<td>Peso atual:</td>
				<td>83,6 Kg</td>
			</tr>
			<tr>
				<td>Peso alvo:</td>
				<td>76,0 Kg</td>
			</tr>
			<tr>
				<td>IMC:</td>
				<td>26</td>
			</tr>
			<tr>
				<td>IDR:</td>
				<td>1500</td>
			</tr>
		</table>
		<p></p>
	</div>
</div>