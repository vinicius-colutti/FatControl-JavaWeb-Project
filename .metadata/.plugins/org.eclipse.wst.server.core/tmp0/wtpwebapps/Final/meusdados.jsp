<%@page import="org.apache.tomcat.util.http.fileupload.FileUpload"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.util.Date" %>	
<%@ page import="java.text.SimpleDateFormat" %>

<%

	Usuario ust = new Usuario();
    ust = (Usuario)session.getAttribute("usuario");


	if (session.getAttribute("usuario") == null){
		response.sendRedirect("login.jsp");
	}
		
		
		
		
	

	FileUpload f = new FileUpload();
	
	

%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Meus Dados</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>

	<%
	
		String num = "1,79";
		double x = Double.parseDouble(num.replaceAll(",", "."));
		System.out.println(x * 2);
		
		Date d = null;
		String dataF = null;
		
		SimpleDateFormat dataFormatada = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat dataMySQL = new SimpleDateFormat("yyyy/MM/dd");
		
		d = dataFormatada.parse("30/05/1974");
		dataF = dataMySQL.format(d);
		
		System.out.println(d);
		System.out.println(dataF);
	
	%>

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
					
					<form action="AlterarUsuario" method="post" enctype="">
						<fieldset style="display: inline-block;">
							<legend>Dados pessoais e para autentica��o:</legend>
								
								
								<table style="margin-left: 20px">
									<tr>
										<td><label for="txtNome">Nome:</label></td>
										<td><input value="<%= ust.getNome() %>" type="text" name="txtNome" style="width: 450px;"></td>
									</tr>
									
									<tr>
										<td><label for="txtEmail">E-mail:</label></td>
										<td><input value="<%= ust.getEmail()%>"type="text" name="txtEmail" style="width: 450px;"></td>
									</tr>
									
									<tr>
										<td><label for="txtLogin">Login:</label></td>
										<td><input value="<%= ust.getLogin() %>" readonly="true" type="text" name="txtLogin" style="width: 210px;"> <label for="txtSenha">Senha:</label> 
												<input value="<%= ust.getSenha() %>" type="text" name="txtSenha" style="width: 190px;"></td>
									</tr>
								
									<tr>
										<td><label for="txtDtNasc">Dt. Nasc.:</label></td>
										<td><input  type="text" value="<%= Data.getDataPortugues((ust.getDtNasc()))%>"name="txtDtNasc" style="width: 100px;"> 
												<label for="txtPeso">Peso (Kg):</label> 
												<input value="<%= ust.getPeso()%>" type="text" name="txtPeso" style="width: 50px;"> 
												<label for="txtAltura">Altura (cm):</label> 
												<input value="<%= ust.getAltura()%>" type="text" name="txtAltura" style="width: 50px;"> </td>
												
									</tr>
									
									<tr>
										<td><label for="rdSexo">Sexo:</label></td>
										<%
											if(ust.getSexo().equals("M")){
												
												out.print("<td><input type=\"radio\" name=\"rdSexo\" value=\"M\" checked>Masculino");
												out.print("<input type=\"radio\" name=\"rdSexo\" value=\"F\">Feminino<br></td>");		
												
												
											}else{
												
												out.print("<td><input type=\"radio\" name=\"rdSexo\" value=\"M\">Masculino");
												out.print("<input type=\"radio\" name=\"rdSexo\" value=\"F\" checked>Feminino<br></td>");		
											}
										
										
										
										
										
										%>
										
									</tr>
									
									<tr>
										<td><label for="idAtividade">Atividades:</label></td>
										<td><select style="width: 170px; background-color: #F0FFFF;">
													<option value="cafe">Pessoa sedent�ria</option>
													<option value="almoco">Ligeiramente ativa</option>
													<option value="jantar">Moderadamente ativa</option>
													<option value="lanches">Intensamente ativa</option>
													<option value="lanches">Extremamente ativa</option>
												</select> 
												<label for="txtFoto">Foto:</label> <input type="file" name="txtFoto" style="width: 240px;"></td>
									</tr>
									
									<tr>
										<td colspan="2" align="right"><input type="submit" value="Alterar"  style="margin-top: 8px; width: 200px;"></td>
										
									</tr>
										
								</table>
	
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