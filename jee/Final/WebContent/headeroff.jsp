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
		<li style="margin-right:98px;"><a href="faleconosco.jsp" ">Fale Conosco</a></li>
		
		
	</ul>
	
	
	
	
</nav>
<!-- FIM HEADER -->
