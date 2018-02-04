package br.com.fatcontrol.DBUtils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
public static Connection abrirConexao(){
		
		Connection con = null;
		String caminho = "jdbc:mysql://localhost:3306/fatcontrol?user=root&password=bcd127";
		
		
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection(caminho);
			
		}catch(Exception e){
			
			System.out.println(e.getMessage());
			
		}
		return con;
		
	}
	
	public static void fecharConexao(Connection con){
		
		if (con != null){
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			
		}
		
	}

}
