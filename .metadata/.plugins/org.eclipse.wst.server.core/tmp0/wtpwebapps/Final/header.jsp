
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
			
				<%
				
					if (session.getAttribute("usuario") != null){
						out.print("<a href='sair.jsp'>Sair</a>");
					} 
					else {
						out.print("<a href='login.jsp'>Entrar</a>");
					}
				
				%>
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
