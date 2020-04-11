package br.com.pi2020.model.domain;

public class Cliente extends Pessoa {
	
	private String situacao;
	

	public Cliente() {
		super();
	}


	public Cliente(Integer id, String nome, String cpf, String rg, String sexo, String estadoCivil,
			String dataNascimento, String estado, String cidade, String bairro, String logradouro, int numero,
			String complemento, String telefone, String email, String situacao) {
		super(id, nome, cpf, rg, sexo, estadoCivil, dataNascimento, estado, cidade, bairro, logradouro, numero,
				complemento, telefone, email);
		this.situacao = situacao;
	}

 
	public String getSituacao() {
		return situacao;
	}


	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}


	public Cliente(Integer id, String nome, String cpf, String telefone, String email, String situacao) {
		super(id, nome, cpf, telefone, email);
		this.situacao = situacao;
	}


	
	

}
