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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Alimento inserido</title>
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

			<div class="autenticacao">
								
				<div class="formularioLogin">
					
					
				
					<label for="usuario">Alimento cadastrado com sucesso, <%= us.getNome() %> !!</label>
						
						
					
					
					<form action="index.jsp" method="post">
					
						<input class="textBox" type="submit" value="Voltar">
					
					
					</form>
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