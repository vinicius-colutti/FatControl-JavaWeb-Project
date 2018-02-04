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

		<!-- CONTEÚDO -->
		<div class="conteudo">
			<%@include file="perfil.jsp"%>
			<div class="direita">
				<div class="conteudoDireita">
					<h4 class="tituloMenuDir">Meus Dados</h4>
					
					<form action="GravarAlimento" method="post">
						<fieldset>
							<legend>Lançar consumo:</legend>
							<p><label for="cbCategorias">Categoria:</label></p>
							<p><select style="width: 200px; background-color: #F0FFFF;">
								<option value="cafe">Café da manhã</option>
								<option value="almoco">Almoço</option>
								<option value="jantar">Jantar</option>
								<option value="lanches">Lanhes</option>
							</select></p>
							
							<p><label for="cbCategorias">Alimento:</label></p>
							<p><select style="width: 400px; background-color: #F0FFFF;">
								<option value="cafe">Arroz branco tipo 1</option>
								<option value="almoco">Feijão Carioca</option>
								<option value="jantar">Alface americana</option>
								<option value="lanches">Filé de peixe grelhado</option>
							</select></p>
							
							<p><label for="txtPorcao">Porção:</label></p>
							<p><input type="text" name="txtPorcao" style="width: 100px;"></p>
							
							<p><label for="txtId">Qtde.:</label></p>						
							<p><input type="text" name="txtQtde" style="width: 100px;"></p>
							
							<p><label for="txtId">Total de calorias:</label></p>						
							<p><input type="text" name="txtQtde" style="width: 100px;"></p>
							
							<input type="submit" value="Gravar Alimentação" style="margin-top: 65px; width: 200px;">
						</fieldset>
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