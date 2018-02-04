package br.com.fatcontrol.model;

public class Alimento {
	private int idAlimento;
	private String descricao;
	private String porcao;
	private Float calorias;
	private int idUsuario;
	public int getIdAlimento() {
		return idAlimento;
	}
	public void setIdAlimento(int idAlimento) {
		this.idAlimento = idAlimento;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getPorcao() {
		return porcao;
	}
	public void setPorcao(String porcao) {
		this.porcao = porcao;
	}
	public Float getCalorias() {
		return calorias;
	}
	public void setCalorias(Float calorias) {
		this.calorias = calorias;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	

}
