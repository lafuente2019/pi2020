package br.com.pi2020.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pi2020.control.model.dao.ClienteDao;
import br.com.pi2020.model.domain.Cliente;

/**
 * Servlet implementation class BuscarCvendaServlet
 */
@WebServlet("/buscarCvendaServlet")
public class BuscarCvendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Cliente> listaCliente = ClienteDao.buscar(request.getParameter("Busca"));
			request.setAttribute("listaCliente", listaCliente);	
			
		} catch (Exception e) {
			request.setAttribute("mensagem", "Erro de banco de dados: " + e.getMessage());
			
	   }
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/venda.jsp");
		dispatcher.forward(request, response);  
	} 
	
		
	}


