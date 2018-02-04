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
<title>F@tControl - ALIMENTOS</title>
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
					<h4 class="tituloMenuDir">Cadastro de Alimentos</h4>
					
					<form action="GravarAlimento" method="post">
						<fieldset>
							<legend>Cadastrar Alimentos:</legend>
							<p><label for="txtId">ID:</label></p>
							<p><input class="inputForm" type="text" name="txtId" style="width: 50px;"></p>
							<p><label for="txtDesc">Descri��o:</label></p>
							<p><input type="text" name="txtDesc" style="width: 400px;"></p>
							<p><label for="txtPorcao">Por��o:</label></p>
							<p><input type="text" name="txtPorcao"></p>
							<p><label for="txtCal">Calorias:</label></p>
							<p><input type="text" name="txtCal"></p>
							<p><label for="cbCategorias">Categoria:</label></p>
							<p><select style="width: 200px; background-color: #F0FFFF;">
								<option value="cafe">Caf� da manh�</option>
								<option value="almoco">Almo�o</option>
								<option value="jantar">Jantar</option>
								<option value="lanches">Lanhes</option>
							</select></p>
							<input type="submit" value="Gravar Alimento"  style="margin-top: 65px; width: 200px;">
						</fieldset>
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