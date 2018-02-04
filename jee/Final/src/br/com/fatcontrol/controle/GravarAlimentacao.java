package br.com.fatcontrol.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fatcontrol.DAO.AlimentacaoDAO;
import br.com.fatcontrol.model.Alimentacao;

@WebServlet("/GravarAlimentacao")
public class GravarAlimentacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GravarAlimentacao() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("esotu aqui 3");
		
		Alimentacao ali = new Alimentacao();
		
		ali.setIdUsuario(Integer.parseInt(request.getParameter("IdUsuario")));
		
		ali.setIdAlimento(Integer.parseInt(request.getParameter("txtAlimento")));	
		
		ali.setPorcao(Float.parseFloat(request.getParameter("txtPorcao")));
		
		ali.setQuantidade(Float.parseFloat(request.getParameter("txtQtde")));
		
		
		AlimentacaoDAO aliDAO = new AlimentacaoDAO();
		
		if(aliDAO.gravarAlimentacao(ali)){
			RequestDispatcher rd = request.getRequestDispatcher("alimentacaowin.jsp");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("alimentacaowin.jsp?erro=naofoi");
			rd.forward(request, response);
		}
	}

}
