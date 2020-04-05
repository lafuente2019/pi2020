package br.com.pi2020.control.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.pi2020.model.domain.Funcionario;

public class FuncionarioDao {

	public List<Funcionario> getFuncionario() throws SQLException, ClassNotFoundException {

		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT id, nome, Cpf, Rg, Sexo,"
				+ "estadoCivil, dataNascimento, Estado, Cidade, bairro, Logradouro, Numero,complemento, Telefone,"
				+ "Email, Senha, Cargo, Filial, Departamento FROM cadastroFuncionario");

		ResultSet rs = ps.executeQuery();
		List<Funcionario> funcionarios = new ArrayList<>();

		while (rs.next()) {
			funcionarios.add(new Funcionario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
					rs.getString(10), rs.getString(11), rs.getInt(12), rs.getString(13), rs.getString(14),
					rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19)));
		}

		return funcionarios;
	}
	

	public void salvar(Funcionario funcionario) throws ClassNotFoundException, SQLException {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				" insert into cadastroFuncionario(nome, cpf, rg, sexo, estadoCivil, dataNascimento, estado, cidade, bairro,  logradouro,"
						+ " numero,complemento, telefone,email, senha, cargo, filial, departamento)"
						+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

		statement.setString(1, funcionario.getNome());
		statement.setString(2, funcionario.getCpf());
		statement.setString(3, funcionario.getRg());
		statement.setString(4, funcionario.getSexo());
		statement.setString(5, funcionario.getEstadoCivil());
		statement.setString(6, funcionario.getDataNascimento());
		statement.setString(7, funcionario.getEstado());
		statement.setString(8, funcionario.getCidade());
		statement.setString(9, funcionario.getBairro());
		statement.setString(10, funcionario.getLogradouro());
		statement.setInt(11, funcionario.getNumero());
		statement.setString(12, funcionario.getComplemento());
		statement.setString(13, funcionario.getTelefone());
		statement.setString(14, funcionario.getEmail());
		statement.setString(15, funcionario.getSenha());
		statement.setString(16, funcionario.getCargo());
		statement.setString(17, funcionario.getFilial());
		statement.setString(18, funcionario.getDepartamento());
		statement.execute();
	}
	
	public List<Funcionario> getFuncionario1() throws SQLException, ClassNotFoundException {
    Connection conexao = conexaoJDBCFactory.getConexao();
    PreparedStatement ps = conexao.prepareStatement("Select id, nome, cpf, email, cargo, "
    		+ "filial , departamento from cadastroFuncionario");
    
    ResultSet rs = ps.executeQuery();
    List<Funcionario> funcionarios = new ArrayList<>();
    
    while(rs.next()) {
    	funcionarios.add(new Funcionario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
    			rs.getString(6), rs.getString(7)));
    }
    
    return funcionarios;
	 
  }


	public void excluir(Integer cod)throws ClassNotFoundException, SQLException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"DELETE FROM cadastrofuncionario WHERE id = ?");

		statement.setInt(1, cod);
		statement.execute();
	  }


	public Funcionario getFuncionarioId(Integer cod) throws SQLException, ClassNotFoundException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT id, nome, Cpf, Rg, Sexo,"
				+ "estadoCivil, dataNascimento, Estado, Cidade, bairro, Logradouro, Numero,complemento, Telefone,"
				+ "Email, Senha, Cargo, Filial, Departamento FROM cadastroFuncionario WHERE id=?");
        ps.setInt(1, cod);
		ResultSet rs =  ps.executeQuery();
		
		if (rs.next()) {
		         return new Funcionario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
					rs.getString(10), rs.getString(11), rs.getInt(12), rs.getString(13), rs.getString(14),
			        rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19));
		}

		throw new SQLException("Codigo não encontrado: " +cod);
	}


	public void atualizar(Funcionario funcionario) throws ClassNotFoundException, SQLException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				" UPDATE cadastroFuncionario SET nome=?, cpf=?, rg=?, sexo=?, estadoCivil=?, dataNascimento=?, estado=?, cidade=?, bairro=?,  logradouro=?,"
						+ " numero=?,complemento=?, telefone=?,email=?, senha=?, cargo=?, filial=?, departamento=? WHERE id=?");

		statement.setString(1, funcionario.getNome());
		statement.setString(2, funcionario.getCpf());
		statement.setString(3, funcionario.getRg());
		statement.setString(4, funcionario.getSexo());
		statement.setString(5, funcionario.getEstadoCivil());
		statement.setString(6, funcionario.getDataNascimento());
		statement.setString(7, funcionario.getEstado());
		statement.setString(8, funcionario.getCidade());
		statement.setString(9, funcionario.getBairro());
		statement.setString(10, funcionario.getLogradouro());
		statement.setInt(11, funcionario.getNumero());
		statement.setString(12, funcionario.getComplemento());
		statement.setString(13, funcionario.getTelefone());
		statement.setString(14, funcionario.getEmail());
		statement.setString(15, funcionario.getSenha());
		statement.setString(16, funcionario.getCargo());
		statement.setString(17, funcionario.getFilial());
		statement.setString(18, funcionario.getDepartamento());
		statement.setInt(19, funcionario.getId());
		statement.execute();
		
	}
	
}

	
