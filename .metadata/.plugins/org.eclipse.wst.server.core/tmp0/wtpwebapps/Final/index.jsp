<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%

	if (session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}

%>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>F@tControl</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/estilo.css">
	</head>
	<body>
	
		<div class="conteiner">
	
			<!-- HEADER -->
			<%@include file="header.jsp"%>
			<!-- FIM HEADER -->
	
			<!-- CONTE�DO -->
			<div class="conteudo">
				<%@include file="perfil.jsp"%>
				<div class="direita">
					<div class="conteudoDireita">
						<h4 class="tituloMenuDir">Consumo Di�rio de Calorias</h4>
						<table class="tabelaCalorias" style="margin-top: 10px;">
							<tr>
								<th>Data</th>
								<th>Alimentos(Cals)</th>
								<th>%IDR</th>
								<th>Exerc�cios (Cals)</th>
								<th>L�quido (Cals)</th>
								<th></th>
							</tr>
							<tr>
								<td class="centralizaConteudo">15/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">14/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">13/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">12/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">11/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">10/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">09/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">08/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">07/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							<tr>
								<td class="centralizaConteudo">06/10/2016</td>
								<td class="centralizaConteudo">1072</td>
								<td class="centralizaConteudo">35%</td>
								<td class="centralizaConteudo">780)</td>
								<td class="centralizaConteudo">560</td>
								<td class="centralizaConteudo"><a href="editarAlimentacao.jsp"><img src="images/edit.png"></a></td>
							</tr>
							
							
											
							
						</table>
					</div>
				</div>
			</div>
			<!-- FIM CONTE�DO -->
	
			<!-- RODAP� -->
			<%@include file="footer.jsp"%>
			<!-- FIM RODAP� -->
	
		</div>
	
	</body>
</html>