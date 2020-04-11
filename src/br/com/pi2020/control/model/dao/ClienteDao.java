package br.com.pi2020.control.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.pi2020.model.domain.Cliente;



public class ClienteDao {

	public List<Cliente> getCliente() throws SQLException, ClassNotFoundException {

		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT idCliente, nome, Cpf, Rg, Sexo,"
				+ "estadoCivil, dataNascimento, Estado, Cidade, bairro, Logradouro, Numero,complemento, Telefone,"
				+ "Email, situacao FROM cadastroCliente");

		ResultSet rs = ps.executeQuery();
		List<Cliente> clientes = new ArrayList<>();

		while (rs.next()) {
			clientes.add(new Cliente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
					rs.getString(10), rs.getString(11), rs.getInt(12), rs.getString(13), rs.getString(14),
					rs.getString(15), rs.getString(16)));
		}
  
		return clientes;  
	} 
	 
 
	public void salvar(Cliente cliente) throws ClassNotFoundException, SQLException {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				" insert into cadastroCliente(nome, cpf, rg, sexo, estadoCivil, dataNascimento, estado, cidade, bairro,  logradouro,"
						+ " numero,complemento, telefone,email, situacao)"
						+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

		statement.setString(1, cliente.getNome()); 
		statement.setString(2, cliente.getCpf());
		statement.setString(3, cliente.getRg());
		statement.setString(4, cliente.getSexo());
		statement.setString(5, cliente.getEstadoCivil()); 
		statement.setString(6, cliente.getDataNascimento());
		statement.setString(7, cliente.getEstado());
		statement.setString(8, cliente.getCidade());
		statement.setString(9, cliente.getBairro());
		statement.setString(10, cliente.getLogradouro()); 
		statement.setInt(11, cliente.getNumero());
		statement.setString(12, cliente.getComplemento());
		statement.setString(13, cliente.getTelefone());
		statement.setString(14, cliente.getEmail());
		statement.setString(15, cliente.getSituacao());
		
		statement.execute();
	}
	
	public List<Cliente> getCliente1() throws SQLException, ClassNotFoundException {
    Connection conexao = conexaoJDBCFactory.getConexao();
    PreparedStatement ps = conexao.prepareStatement("Select idCliente, nome, cpf, telefone, email, situacao from cadastroCliente");
    
    ResultSet rs = ps.executeQuery();
    List<Cliente> clientes = new ArrayList<Cliente>();
    
    while(rs.next()) {
    	clientes.add(new Cliente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
    			rs.getString(6)));
    }
    
    return clientes;
	 
  }


	public void excluir(Integer cod)throws ClassNotFoundException, SQLException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				"DELETE FROM cadastroCliente WHERE idCliente = ?");

		statement.setInt(1, cod);
		statement.execute();
	  }


	public Cliente getClienteId(Integer cod) throws SQLException, ClassNotFoundException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement("SELECT idCliente, nome, Cpf, Rg, Sexo,"
				+ "estadoCivil, dataNascimento, Estado, Cidade, bairro, Logradouro, Numero,complemento, Telefone,"
				+ "Email, Situacao FROM cadastroCliente WHERE idCliente=?");
        ps.setInt(1, cod);
		ResultSet rs =  ps.executeQuery();
		
		if (rs.next()) {
		         return new Cliente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
					rs.getString(10), rs.getString(11), rs.getInt(12), rs.getString(13), rs.getString(14),
			        rs.getString(15), rs.getString(16));
		}

		throw new SQLException("Codigo não encontrado: " +cod);
	}


	public void atualizar(Cliente cliente) throws ClassNotFoundException, SQLException  {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				" UPDATE cadastroCliente SET nome=?, cpf=?, rg=?, sexo=?, estadoCivil=?, dataNascimento=?, estado=?, cidade=?, bairro=?,  logradouro=?,"
						+ " numero=?,complemento=?, telefone=?,email=?, situacao=? WHERE idCliente=?");

		statement.setString(1, cliente.getNome());
		statement.setString(2, cliente.getCpf());
		statement.setString(3, cliente.getRg());
		statement.setString(4, cliente.getSexo());
		statement.setString(5, cliente.getEstadoCivil());
		statement.setString(6, cliente.getDataNascimento());
		statement.setString(7, cliente.getEstado());
		statement.setString(8, cliente.getCidade());
		statement.setString(9, cliente.getBairro());
		statement.setString(10, cliente.getLogradouro());
		statement.setInt(11, cliente.getNumero());
		statement.setString(12, cliente.getComplemento());
		statement.setString(13, cliente.getTelefone());
		statement.setString(14, cliente.getEmail());
		statement.setString(15, cliente.getSituacao());
		statement.setInt(16, cliente.getId());
		statement.execute();
		
	}	
  
	      public static List<Cliente> buscar(String busca)throws SQLException, Exception {
	    	  String sql = "SELECT idCliente,nome,cpf,telefone,email,situacao FROM cadastroCliente WHERE idCliente like ? or nome like ? or cpf like ?";
		  busca = '%'+busca+'%';
		  
		  List <Cliente> listaCliente = null;
		  
		  Connection conexao = null;
		  
		  PreparedStatement ps = null;
		  
		  ResultSet rs = null;
		  
		  try {
			conexao = conexaoJDBCFactory.getConexao();
			ps = conexao.prepareStatement(sql);
			ps.setString(1, busca);
			ps.setString(2, busca);
			ps.setString(3, busca);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				if(listaCliente == null) {
					listaCliente = new ArrayList<Cliente>();
				}
				int idCliente = rs.getInt("idCliente");
				String nome = rs.getString("nome");
				String cpf = rs.getString("cpf");
				String telefone = rs.getString("telefone");
				String email = rs.getString("email");
				String situacao = rs.getString("situacao");
				
				
				Cliente C = new Cliente(idCliente,nome,cpf,telefone,email,situacao);
				listaCliente.add(C);
			}
			
		} catch (Exception e) {
			e.getMessage();
			System.out.println(e);
		}finally {
			if(rs != null && !rs.isClosed()) {
				rs.close();
			}
			if(ps != null && !ps.isClosed()) {
				ps.close();
			}
			if(conexao != null && !conexao.isClosed()) {
				conexao.close();
			}
		}
		  return listaCliente;
	}  
}

	

