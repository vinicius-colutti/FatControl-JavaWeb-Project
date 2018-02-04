<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%

	String msg = "";
	String erro = "OK";
	try {
		erro = request.getParameter("autentica");
		if (erro.equals("erro")){
			msg = "Usu�rio ou senha inv�lidos!";
		}
	} catch (Exception e) {
		
	}

%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Afin@Soft - LOGIN</title>
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
					<p class="tituloLogin">LOGIN!</p>
					<p style="color: red; margin-bottom: 20px;"><%= msg %></p>
					<form action="autentica.jsp" method="post">
						<label for="usuario">Nome do usu�rio:</label>
						<input class="textBox" type="text" id="usuario" name="txtUsuario">
						<label for="usuario">Senha</label>
						<input class="textBox" type="password" id="senha" name="txtSenha"> 
						<input class="textBox" type="submit" value="Autenticar">
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