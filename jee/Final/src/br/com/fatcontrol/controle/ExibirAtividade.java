package br.com.fatcontrol.controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fatcontrol.DAO.AtividadeDAO;
import br.com.fatcontrol.model.Atividade;


@WebServlet("/ExibirAtividade")
public class ExibirAtividade extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ExibirAtividade() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		List<Atividade> listaAtividade = new ArrayList<>();
		AtividadeDAO aDAO = new AtividadeDAO();
		
		listaAtividade = aDAO.listarAtividade();
		request.setAttribute("lista", listaAtividade);
		RequestDispatcher rd = request.getRequestDispatcher("#");
		rd.forward(request, response);
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
