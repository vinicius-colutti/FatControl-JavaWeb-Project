<%@page import="br.com.fatcontrol.Util.Data"%>
<%@page import="br.com.fatcontrol.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- CÓDIGO JAVA JSP -->

<%

	Usuario us = new Usuario();
	us = (Usuario)session.getAttribute("usuario");

	
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Alterado com sucesso</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/estilo.css">
	</head>
		<body>
<div class="conteiner">

		<!-- HEADER -->
		<%@include file="header.jsp"%>
		<!-- FIM HEADER -->

		<!-- CONTEÚDO -->
		<div class="conteudo">

			<div class="autenticacao">
								
				<div class="formularioLogin">
					
					
					<form action="Login" method="post">
					<label for="usuario">Dados Alterados com sucesso, <%= us.getNome()  %>! Para finalizar o procedimento, é necessário logar novamente.</label>
						
						
					</form>
					
					<form action="sair.jsp" method="post">
					
						<input class="textBox" type="submit" value="Logar">
					
					
					</form>
				</div>
				
			</div>
		</div>
		<!-- FIM CONTEÚDO -->

		<!-- RODAPÉ -->
		<%@include file="footer.jsp"%>
		<!-- FIM RODAPÉ -->

</div>
		
		</body>
</html>