package br.com.pi2020.control;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pi2020.control.model.dao.ProdutoDao;
import br.com.pi2020.model.domain.Produto;


@WebServlet("/buscarProdutoServlet")
public class BuscarProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Produto> listaProduto = ProdutoDao.buscar(request.getParameter("Busca"));
			request.setAttribute("listaProduto", listaProduto);	
			
		} catch (Exception e) {
			request.setAttribute("mensagem", "Erro de banco de dados: " + e.getMessage());
			
	   }
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/buscaProduto.jsp");
		dispatcher.forward(request, response);
	}	
		

}
