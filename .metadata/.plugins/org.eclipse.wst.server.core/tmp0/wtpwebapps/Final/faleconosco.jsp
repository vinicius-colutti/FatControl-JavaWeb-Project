<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Fale Conosco</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/estilo.css">
	</head>
		<body>
<div class="conteiner">

		<!-- HEADER -->
		<%@include file="headerfale.jsp"%>
		<!-- FIM HEADER -->

		<!-- CONTE�DO -->
		<div class="conteudo">

			<div class="autenticacao">
								
				<div class="formularioLogin">
					
					
					<form action="login.jsp">
					<p><label for="usuario">Entre em contato: (11)95353-4927</label></p>
					<p><label for="usuario">Email: viniciuscolutti@hotmail.com</label></p>
					<p><label for="usuario">LinkedIn: Vinicius Colutti</label></p>
						
						
					</form>
					
					<form action="sair.jsp" method="post">
					
						<input class="textBox" type="submit" value="Voltar a tela de login">
					
					
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