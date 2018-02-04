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
					<h4 class="tituloMenuDir">Meus Dados</h4>
					
					<form action="GravarAlimento" method="post">
						<fieldset>
							<legend>Lan�ar consumo:</legend>
							<p><label for="cbCategorias">Categoria:</label></p>
							<p><select style="width: 200px; background-color: #F0FFFF;">
								<option value="cafe">Caf� da manh�</option>
								<option value="almoco">Almo�o</option>
								<option value="jantar">Jantar</option>
								<option value="lanches">Lanhes</option>
							</select></p>
							
							<p><label for="cbCategorias">Alimento:</label></p>
							<p><select style="width: 400px; background-color: #F0FFFF;">
								<option value="cafe">Arroz branco tipo 1</option>
								<option value="almoco">Feij�o Carioca</option>
								<option value="jantar">Alface americana</option>
								<option value="lanches">Fil� de peixe grelhado</option>
							</select></p>
							
							<p><label for="txtPorcao">Por��o:</label></p>
							<p><input type="text" name="txtPorcao" style="width: 100px;"></p>
							
							<p><label for="txtId">Qtde.:</label></p>						
							<p><input type="text" name="txtQtde" style="width: 100px;"></p>
							
							<p><label for="txtId">Total de calorias:</label></p>						
							<p><input type="text" name="txtQtde" style="width: 100px;"></p>
							
							<input type="submit" value="Gravar Alimenta��o" style="margin-top: 65px; width: 200px;">
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