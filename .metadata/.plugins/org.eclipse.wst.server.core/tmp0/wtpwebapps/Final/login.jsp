<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%

	String msg = "";
	String erro = "OK";
	try {
		erro = request.getParameter("erro");
		if (erro.equals("1")){
			msg = "Usu�rio ou senha inv�lidos!";
		}
	} catch (Exception e) {
		System.out.println(e);
		
	}

%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>F@tControl - LOGIN</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>

	<div class="conteiner">

		<!-- HEADER -->
		<%@include file="headeroff.jsp"%>
		<!-- FIM HEADER -->

		<!-- CONTE�DO -->
		<div class="conteudo">

			<div class="autenticacao">
								
				<div class="formularioLogin">
					<p class="tituloLogin">LOGIN!</p>
					<p style="color: red; margin-bottom: 20px;"><%= msg %></p>
					<form action="Login" method="post">
						<label for="usuario">Nome do usu�rio(Login):</label>
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