<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Afin@Soft</title>
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
				<h4 class="tituloConteudo">Entradas Recentes de Alimentos e
					Exerc�cios</h4>
			</div>
		</div>
		<!-- FIM CONTE�DO -->

		<!-- RODAP� -->
		<%@include file="footer.jsp"%>
		<!-- FIM RODAP� -->

	</div>

</body>
</html>