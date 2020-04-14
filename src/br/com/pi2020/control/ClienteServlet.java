package br.com.pi2020.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pi2020.control.model.dao.ClienteDao;
import br.com.pi2020.model.domain.Cliente;



@WebServlet("/clienteServlet")
public class ClienteServlet extends HttpServlet {
	
	 
	private static final long serialVersionUID = 1L;
	private ClienteDao clienteDao = new ClienteDao(); 
	 
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		String id = request.getParameter("id"); 
		try {
			if(acao != null && acao.equals("Editar")) {
				Integer cod = Integer.parseInt(id); 
			    Cliente cliente = clienteDao.getClienteId(cod);  
			    request.setAttribute("cliente", cliente);
			} 
			request.setAttribute("clientes", clienteDao.getCliente());	 
			
		} catch (SQLException e) {
			request.setAttribute("mensagem", "Erro de banco de dados: " + e.getMessage());
	   }catch (ClassNotFoundException e) {
			
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage()); 
	   }
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/editarCliente.jsp"); 
		dispatcher.forward(request, response);
	} 

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String rg = request.getParameter("rg");
		String sexo = request.getParameter("sexo");
		String estadoCivil = request.getParameter("estadoCivil");
		String dataNascimento = request.getParameter("dataNascimento");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String bairro = request.getParameter("bairro");
		String logradouro = request.getParameter("logradouro");
		int numero = Integer.parseInt(request.getParameter("numero"));
		String complemento = request.getParameter("complemento");
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");
		String situacao = request.getParameter("situacao");
		String id = request.getParameter("id");
		Cliente cliente = new Cliente(null,nome, cpf, rg, sexo, estadoCivil, dataNascimento,
				estado, cidade, bairro, logradouro, numero, complemento, telefone, email, situacao);
		if(id != null && !id.equals("")) {
			cliente.setId(Integer.parseInt(id));
		}
		try {
			if(cliente.getId() != null) {
				 clienteDao.atualizar(cliente);
				 request.setAttribute("mensagem","Cliente atualizado com sucesso!!!");
			}else {
			 clienteDao.salvar(cliente);
			 request.setAttribute("mensagem","Cliente salvo com sucesso!!!");
		  }
		} catch (SQLException e) {
			request.setAttribute("mensagem", "Erro de banco de dados: " + e.getMessage());
			 request.setAttribute("cliente", cliente);
			 System.out.println("oii");
	    }catch (ClassNotFoundException e) {
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage());
			 request.setAttribute("cliente", cliente);
	   }
		try {
		  request.setAttribute("cliente", clienteDao.getCliente());
	   } catch (SQLException e) {
		   
			request.setAttribute("mensagem", "Erro de banco de dados: " + e.getMessage());
			 request.setAttribute("cliente", cliente);
			 
	    }catch (ClassNotFoundException e) {
	    	
			request.setAttribute("mensagem", "Erro de Driver: " + e.getMessage());
			 request.setAttribute("cliente", cliente);
	    }
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/cliente.jsp");
		dispatcher.forward(request, response);
		
	   }
}


