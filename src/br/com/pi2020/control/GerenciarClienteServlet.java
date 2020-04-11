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



@WebServlet("/gerenciarClienteServlet")
public class GerenciarClienteServlet extends HttpServlet {
	
	private ClienteDao clienteDao = new ClienteDao();  
	private static final long serialVersionUID = 1L; 
       
    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		String id = request.getParameter("id");
		try {
			if(acao != null && acao.equals("Excluir")) { 
				Integer cod = Integer.parseInt(id);
				clienteDao.excluir(cod);
				request.setAttribute("mensagem", "Cliente Excluido com sucesso!!");
			}
			request.setAttribute("clientes", clienteDao.getCliente1());
			
		} catch (SQLException e) {
			request.setAttribute("mensagem","Erro de banco de dados");
			 
		} catch (ClassNotFoundException e) {
			
			request.setAttribute("mensagem", "Erro de driver");
		} 
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/gerenciarCliente.jsp");
	    dispatcher.forward(request, response);
	}
}
	



