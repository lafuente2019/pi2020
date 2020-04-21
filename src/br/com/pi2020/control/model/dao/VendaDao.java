package br.com.pi2020.control.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.pi2020.model.domain.Venda;

public class VendaDao {

	public List<Venda> getVenda() throws SQLException, ClassNotFoundException {

		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement ps = conexao.prepareStatement(
				"SELECT p.idProduto, p.nome, p.preco, p.quantidade, v.idVenda, v.data, v.pagamento, v.subTotal   FROM Venda as v"
						+ " join cadastroProduto as p" 
						+ " on p.idProduto = v.idProduto ");

		ResultSet rs = ps.executeQuery();
		List<Venda> vendas = new ArrayList<>();

		while (rs.next()) {
			vendas.add(new Venda(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getInt(5),
					rs.getString(6), rs.getString(7), rs.getFloat(8)));
		}

		return vendas;
	}

	public void salvar(Venda venda) throws ClassNotFoundException, SQLException {
		Connection conexao = conexaoJDBCFactory.getConexao();
		PreparedStatement statement = conexao.prepareStatement(
				" insert into vendas(idProduto, nome, preco, quantidade,idVenda,pagamento, subTotal)  values (?,?,?,?,?,?,?)");

		statement.setInt(1, venda.getId());
		statement.setString(2, venda.getNome());
		statement.setFloat(3, venda.getPreco());
		statement.setInt(4, venda.getQuantidade());
		statement.setInt(5, venda.getIdVenda());
		statement.setString(7, venda.getPagamento());
		statement.setFloat(8, venda.getSubTotal());
		statement.execute();

	}

	public static List<Venda> buscar(String busca) throws SQLException, Exception {
		String sql = "SELECT p.idProduto, p.nome, p.preco, p.quantidade, v.idVenda, v.data, v.pagamento, v.subTotal FROM Venda as v "
				+ " join cadastroProduto as p " 
				+ " on p.idProduto = v.idProduto "
				+ " WHERE p.nome like ? or v.idVenda like ? or p.categoria like ? ";
		
		busca = busca + '%';

		List<Venda> listaVenda = null;

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

			while (rs.next()) {
				if (listaVenda == null) {
					listaVenda = new ArrayList<Venda>();
				}
				int idProduto = rs.getInt("idProduto");
				String nome = rs.getString("nome");
				float preco = rs.getFloat("preco");
				int quantidade = rs.getInt("quantidade");
				int idVenda = rs.getInt("idVenda");
				String data = rs.getString("data");
				String pagamento = rs.getString("pagamento");
				float subTotal = rs.getFloat("subTotal");

				Venda V = new Venda(idProduto,nome,preco,quantidade,idVenda,data,pagamento,subTotal);
				listaVenda.add(V);
			}

		} catch (Exception e) {
			e.getMessage();
			System.out.println(e);
			
		} finally {
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
			if (ps != null && !ps.isClosed()) {
				ps.close();
			}
			if (conexao != null && !conexao.isClosed()) {
				conexao.close();
			}
		}
		return listaVenda;
	}
}
