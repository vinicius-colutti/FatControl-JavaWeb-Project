package br.com.fatcontrol.teste;

import br.com.fatcontrol.DAO.UsuarioDAO;
import br.com.fatcontrol.model.Usuario;

public class Teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		UsuarioDAO uDao = new UsuarioDAO();
		
		Usuario u = new Usuario();
		
		
		u = uDao.autenticar("vini", "123");
		
		System.out.println(u.getNome());
		System.out.println(u.getIdAtividade());
		System.out.println(u.getIdr());

	}

}
