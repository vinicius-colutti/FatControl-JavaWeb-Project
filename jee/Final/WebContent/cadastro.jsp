
    
<!DOCTYPE html>
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastrar-se</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/estilo.css">
	</head>
		<!-- HEADER -->
		<div class="container">
			<div style="padding-left: 5px; padding-right: 5px">
				<header>
					<h1>
						<img alt="FatControl" src="images/logo2.png" width="100"
							height="100">
					</h1>
					<p class="logo">F@tControl</p>
					<p class="subtitulo">Controle suas calorias!</p>
					<p class="login">
					
						<!--  <a href="#">Login</a>-->
					</p>
					<p class="registrar">
						<a href="cadastro.jsp">Registrar-se</a>
					</p>
				</header>
			</div>
		</div>

<nav class="menu-sup">
	<ul>
		<li><a href="index.jsp">Home Page</a></li>
		<li><a href="meusdados.jsp">Meus Dados</a></li>
		<li><a href="minhaalimentacao.jsp">Minha alimentação</a></li>
		<li><a href="#">Meus Exercícios</a></li>
		<li><a href="alimentos.jsp">Alimentos</a></li>
		<li><a href="#">Exercícios</a></li>
		<li><a href="#">Quero me pesar</a></li>
	</ul>
</nav>
		<!-- FIM HEADER -->
		
		<body>
			<!-- CONTEÚDO -->
		<div class="conteudo" style=" margin-right:400px;">			
			<div class="direita">
				<div class="conteudoDireita">
					<h4 class="tituloMenuDir">Meus Dados</h4>
					
					<form action="GravarUsuario" method="post" enctype="">
						<fieldset style="display: inline-block;">
							<legend>Dados pessoais e para autenticação:</legend>
								
								
								<table style="margin-left: 20px">
									<tr>
										<td><label for="txtNome">Nome:</label></td>
										<td><input type="text" name="txtNome" style="width: 450px;"></td>
									</tr>
									
									<tr>
										<td><label for="txtEmail">E-mail:</label></td>
										<td><input type="text" name="txtEmail" style="width: 450px;"></td>
									</tr>
									
									<tr>
										<td><label for="txtLogin">Login:</label></td>
										<td><input  type="text" name="txtLogin" style="width: 210px;"> <label for="txtSenha">Senha:</label> 
												<input  type="password" name="txtSenha" style="width:187px;"></td>
									</tr>
								
									<tr>
										<td><label for="txtDtNasc">Dt. Nasc.:</label></td>
										<td><input  type="text" name="txtDtNasc" style="width: 90px;"> 
												<label for="txtPeso">Peso (Kg):</label> 
												<input type="text" name="txtPeso" style="width: 45px;"> 
												<label for="txtAltura">Altura (cm):</label> 
												<input type="text" name="txtAltura" style="width: 45px;"> 
												<label for="txtPesoAlvo">Peso Alvo</label> 
												<input type="text" name="txtPesoAlvo" style="width: 45px;"> </td>
											
												






									</tr>
									
									<tr>
										<td><label for="rdSexo">Sexo:</label></td>
										<td><input type="radio" name="rdSexo" value="M">Masculino
												<input type="radio" name="rdSexo" value="F">Feminino<br></td>
												
									</tr>
									
									<tr>
										<td><label for="cbAtividades">Atividades:</label></td>
										<td><select name="idAtividade" style="width: 170px; background-color: #F0FFFF;">
													
													
												</select> 
												<label for="txtFoto">Foto:</label> <input type="file" name="txtFoto" style="width: 240px;"></td>
									</tr>
									
									<tr>
										<td colspan="2" align="right"><input type="submit" value="Gravar dados"  style="margin-top: 8px; width: 530px;"></td>
									</tr>
										
								</table>
	
						</fieldset>
					</form>
					
				</div>
			</div>
		</div>
		<!-- FIM CONTEÚDO -->
		<!-- RODAPÉ -->
			<div class="rodape">
				<footer>
					<p style="color:white; font-weight: bold; margin-bottom: 5px;">F@tControl</p>
					<p>Copyright © 2007-2016. Todos os Direitos Reservados.</p>
					<p style="margin-bottom: 10px;">Contato: <a href="mailto:suporte@afinasoft.com.br">Suporte OnLine</a></p>
				</footer>
	        </div>
		<!-- FIM RODAPÉ -->
		
		</body>
</html>