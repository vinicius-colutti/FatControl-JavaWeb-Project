package br.com.fatcontrol.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fatcontrol.DAO.UsuarioDAO;
import br.com.fatcontrol.model.Usuario;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("txtUsuario");
		String senha = request.getParameter("txtSenha");
		
		UsuarioDAO u = new UsuarioDAO();
		RequestDispatcher rd = null;
		
		Usuario usuario = new Usuario();
		usuario = u.autenticar(login, senha);
		
		if (usuario != null){
			
			request.setAttribute("user" , usuario);
			rd = request.getRequestDispatcher("autentica.jsp");
			rd.forward(request, response);
			
		}else{
			rd = request.getRequestDispatcher("login.jsp?erro=1");
			rd.forward(request, response);
			
			
		}
		
		
	}

}
