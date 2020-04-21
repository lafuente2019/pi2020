package br.com.pi2020.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pi2020.control.model.dao.VendaDao;
import br.com.pi2020.model.domain.Venda;

/**
 * Servlet implementation class VendaServlet
 */
@WebServlet("/vendaServlet")
public class VendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private VendaDao vendaDao = new VendaDao();
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/venda.jsp"); 
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.getMessage();
		}
		
	}
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		float preco = Float.parseFloat(request.getParameter("preco"));
		int quantidade = Integer.parseInt(request.getParameter("quantidade"));
		int idVenda = Integer.parseInt(request.getParameter("idVenda"));
		String pagamento = request.getParameter("pagamento");
		float subTotal = Float.parseFloat(request.getParameter("subTotal"));
		
		Venda venda = new Venda(id,nome,preco,quantidade,idVenda,pagamento,subTotal);
		
		try {
			vendaDao.salvar(venda);
		} catch (Exception e) {
			e.getMessage();
		}
	}

	

}
