<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
       <meta charset="utf-8">
       <link rel="shortcut icon" href="imagem/muchachos.png">
       <link rel="stylesheet" href="css/estilobootstrap.css">
       <link rel="stylesheet" href="css/componentes.css">
  </head>

  <body>
   <header class="layout-cabecalho  layout-cabecalho--tabela">
      <div class="container">
        <nav class="navegacao  ">
          <a href="menu.jsp"><img src="imagem/muchachos.png" width="60" height="55" title="HOME" alt="Muchachos" /></a>
        </nav> 
      </div>
    </header> 
       <div class="container">
          <h1 class="titulo-formulario">Relatorio de Vendas</h1> 
          <form action="buscarVendaServlet" method="get"> 
            <div class="row">
              <div class="col-sm-3">
				<div class="grupo-entrada">
				   <input placeholder="Digite o Nome ou Produto ou filial aqui " type="text"
		     		class="campo" required name="Busca">
				</div>
			 </div>
               <div class="col-sm-3">
                 <div class="grupo-entrada">
                   <div style="text-align: center; margin-top: 20px">
                   <input type="submit" value="Buscar" class="botao-tabela">
                  </div>
                </div> 
               </div>
            </div>
           </form>  
          </div> 
                    
          <table class="tabela">
		   <thead>
			<tr>
                <th>Id Produto</th>
				<th>Nome Produto</th>
				<th>Valor Uni.</th>
			    <th>Quantidade</th>	
			    <th>Id Venda</th>
				<th>Data</th>
				<th>Pagamento</th>	
			    <th>Subtotal</th>
			    <th>idCliente</th>
			  
			</tr>
		   </thead>
		  <tbody>
			<c:forEach var="r" items="${listaVenda}">
			<tr>
				<td>${r.id}</td>
				<td>${r.nome}</td>
				<td>${r.preco}</td>
				<td>${r.quantidade}</td>
				<td>${r.idVenda}</td>
				<td>${r.data}</td>
				<td>${r.pagamento}</td>
				<td>${r.subTotal}</td>
				<td>${r.idCliente}</td>
				
			</tr>
		   </c:forEach>
		 </tbody>
	  </table>
	 
       <footer class="layout-rodape">
         <div class="container">
          <p>&copy; Muchachos. Todos os direitos reservados.</p>
         </div>
       </footer>
  </body>
</html>