package br.com.pi2020.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pi2020.control.model.dao.FuncionarioDao;
import br.com.pi2020.model.domain.Funcionario;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private FuncionarioDao funcionarioDao = new FuncionarioDao();
     private Funcionario funcionario = new Funcionario();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
 		String accion =  request.getParameter("accion");
 		if(accion.equalsIgnoreCase("Logar") ) {
 			String email=request.getParameter("email");
 			String senha = request.getParameter("senha");
 			try {
				funcionario =  funcionarioDao.validar(email, senha);
				if(funcionario.getEmail() != null && funcionario.getSenha() != null) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/menuu.jsp");
				    dispatcher.forward(request, response);
				}else {
					request.setAttribute("mensagem", "Email ou senha invalido");
					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				    dispatcher.forward(request, response);
				}
			} catch (ClassNotFoundException | SQLException e) {
				
				
			
			}
    }

  }
}