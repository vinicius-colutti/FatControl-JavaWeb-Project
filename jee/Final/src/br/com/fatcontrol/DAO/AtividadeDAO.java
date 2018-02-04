package br.com.fatcontrol.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fatcontrol.DBUtils.Conexao;
import br.com.fatcontrol.model.Atividade;

public class AtividadeDAO {
	
	public List<Atividade> listarAtividade(){
		List<Atividade> listaAtividade = new ArrayList();
		Connection con = null;
		
		try{
			con = Conexao.abrirConexao();
			
			String sql = "SELECT * FROM tbl_atividade";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			
			
			while(rs.next()){
				
				Atividade atividade = new Atividade();
				atividade.setDescricao(rs.getString("descricao"));
				atividade.setIdAtividade(Integer.parseInt(rs.getString("idAtividade")));
				System.out.println(atividade.getDescricao());
				listaAtividade.add(atividade);
				
				
			}
			
			Conexao.fecharConexao(con);
			
			
		}catch(SQLException erro){
			
			System.out.println("erro" + erro.getMessage());
		}catch(Exception e){
			System.out.println("Erro comum" + e.getMessage());
		}
			
		
		return listaAtividade;	
		
		
	}
		

}