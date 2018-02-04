package br.com.fatcontrol.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fatcontrol.DBUtils.Conexao;
import br.com.fatcontrol.model.Alimento;


public class BuscarAliDAO {
	
	public List<Alimento> listarAlimento(){
		List<Alimento> listaAlimento = new ArrayList();
		Connection con = null;
		
		try{
			con = Conexao.abrirConexao();
			
			String sql = "SELECT * FROM tbl_alimento";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			
			
			while(rs.next()){
				
				Alimento ali = new Alimento();
				ali.setIdAlimento(rs.getInt("idUsuario"));
				ali.setDescricao(rs.getString("descricao"));
				ali.setPorcao(rs.getString("porcao"));
				ali.setCalorias(rs.getFloat("calorias"));
				
				listaAlimento.add(ali);
				
				
			}
			
			Conexao.fecharConexao(con);
			
			
		}catch(SQLException erro){
			
			System.out.println("erro" + erro.getMessage());
		}catch(Exception e){
			System.out.println("Erro comum" + e.getMessage());
		}
			
		
		return listaAlimento;	
		
		
	}
		

}
