package br.com.fatcontrol.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import br.com.fatcontrol.DBUtils.Conexao;

import br.com.fatcontrol.model.Alimento;


public class AlimentoDAO {
	public boolean gravarAlimento(Alimento a){
		
			boolean gravou = true;
			Connection con;

			try {
				con = Conexao.abrirConexao();
				String sql = "INSERT INTO tbl_alimento( descricao, porcao, calorias, idUsuario)";
				sql += "values (?, ?, ?, ? )";
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, a.getDescricao());
				st.setString(2, a.getPorcao());
				st.setFloat(3, a.getCalorias());
				st.setInt(4, a.getIdUsuario());
				
				st.execute();

				Conexao.fecharConexao(con);

			} catch (Exception e) {
				gravou = false;
				System.out.println(e.getMessage());

			}

			return gravou;
		
		
		
	}
	
	

}
