/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.38
 * Generated at: 2016-12-04 03:33:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/headeroff.jsp", Long.valueOf(1480795709594L));
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1477165762000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\t\r\n");


	String msg = "";
	String erro = "OK";
	try {
		erro = request.getParameter("erro");
		if (erro.equals("1")){
			msg = "Usuário ou senha inválidos!";
		}
	} catch (Exception e) {
		System.out.println(e);
		
	}


      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>F@tControl - LOGIN</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/estilo.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"conteiner\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- HEADER -->\r\n");
      out.write("\t\t");
      out.write("<!-- HEADER -->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t<div style=\"padding-left: 5px; padding-right: 5px\">\r\n");
      out.write("\t\t<header>\r\n");
      out.write("\t\t\t<h1>\r\n");
      out.write("\t\t\t\t<img alt=\"FatControl\" src=\"images/logo2.png\" width=\"100\"\r\n");
      out.write("\t\t\t\t\theight=\"100\">\r\n");
      out.write("\t\t\t</h1>\r\n");
      out.write("\t\t\t<p class=\"logo\">F@tControl</p>\r\n");
      out.write("\t\t\t<p class=\"subtitulo\">Controle suas calorias!</p>\r\n");
      out.write("\t\t\t<p class=\"login\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t");

				
					if (session.getAttribute("usuario") != null){
						out.print("<a href='sair.jsp'>Sair</a>");
					} 
					else {
						out.print("<a href='login.jsp'>Entrar</a>");
					}
				
				
      out.write("\r\n");
      out.write("\t\t\t\t<!--  <a href=\"#\">Login</a>-->\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p class=\"registrar\">\r\n");
      out.write("\t\t\t\t<a href=\"cadastro.jsp\">Registrar-se</a>\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"menu-sup\">\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t<li style=\"margin-right:98px;\"><a href=\"faleconosco.jsp\" \">Fale Conosco</a></li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("</nav>\r\n");
      out.write("<!-- FIM HEADER -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- FIM HEADER -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- CONTEÚDO -->\r\n");
      out.write("\t\t<div class=\"conteudo\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"autenticacao\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"formularioLogin\">\r\n");
      out.write("\t\t\t\t\t<p class=\"tituloLogin\">LOGIN!</p>\r\n");
      out.write("\t\t\t\t\t<p style=\"color: red; margin-bottom: 20px;\">");
      out.print( msg );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t<form action=\"Login\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<label for=\"usuario\">Nome do usuário(Login):</label>\r\n");
      out.write("\t\t\t\t\t\t<input class=\"textBox\" type=\"text\" id=\"usuario\" name=\"txtUsuario\">\r\n");
      out.write("\t\t\t\t\t\t<label for=\"usuario\">Senha</label>\r\n");
      out.write("\t\t\t\t\t\t<input class=\"textBox\" type=\"password\" id=\"senha\" name=\"txtSenha\"> \r\n");
      out.write("\t\t\t\t\t\t<input class=\"textBox\" type=\"submit\" value=\"Autenticar\">\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- FIM CONTEÚDO -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- RODAPÉ -->\r\n");
      out.write("\t\t");
      out.write("<!-- RODAPÉ -->\r\n");
      out.write("<div class=\"rodape\">\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<p style=\"color:white; font-weight: bold; margin-bottom: 5px;\">F@tControl</p>\r\n");
      out.write("\t\t<p>Copyright © 2007-2016. Todos os Direitos Reservados.</p>\r\n");
      out.write("\t\t<p style=\"margin-bottom: 10px;\">Contato: <a href=\"mailto:suporte@afinasoft.com.br\">Suporte OnLine</a></p>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- FIM RODAPÉ -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- FIM RODAPÉ -->\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
