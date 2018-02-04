package br.com.fatcontrol.model;

public class Alimentacao {
	private int idAlimentacao;
	private int idUsuario;
	private int idAlimento;
	private float quantidade;
	private float porcao;
	public int getIdAlimentacao() {
		return idAlimentacao;
	}
	public void setIdAlimentacao(int idAlimentacao) {
		this.idAlimentacao = idAlimentacao;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdAlimento() {
		return idAlimento;
	}
	public void setIdAlimento(int idAlimento) {
		this.idAlimento = idAlimento;
	}
	public float getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(float quantidade) {
		this.quantidade = quantidade;
	}
	public float getPorcao() {
		return porcao;
	}
	public void setPorcao(float porcao) {
		this.porcao = porcao;
	}
	

}
