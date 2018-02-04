package br.com.fatcontrol.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fatcontrol.DBUtils.Conexao;
import br.com.fatcontrol.model.Alimentacao;

public class AlimentacaoDAO {
	
	public boolean gravarAlimentacao(Alimentacao alimentacao){
			boolean gravou = false;
			Connection con;

			try{
				con = Conexao.abrirConexao();
				String sql = "INSERT INTO tbl_alimentacao(idUsuario, idAlimento, quantidade, porcao)";
				sql += "values(?,?,?,?)";
				
				PreparedStatement st = con.prepareStatement(sql);
				
				st.setInt(1, alimentacao.getIdUsuario());
				st.setInt(2, alimentacao.getIdAlimento());
				st.setFloat(3, alimentacao.getQuantidade());
				st.setFloat(4, alimentacao.getPorcao());
				
				gravou = st.execute();
				
				Conexao.fecharConexao(con);
			}catch(SQLException e){
				System.out.println("Erro" + e.getMessage());
			}
			
			
			return gravou;
			
	}

}
