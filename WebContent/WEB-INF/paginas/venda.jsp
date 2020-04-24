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
    <header class="layout-cabecalho layout-cabecalho--tabela">
      <div class="container">
        <nav class="navegacao  ">
          <a href="menu.jsp"><img src="imagem/muchachos.png" title="HOME"  width="60" height="55" alt="Muchachos" /></a>
        </nav> 
      </div>
    </header>
      
    <div class="container">
    <h1 class="titulo-formulario">Venda</h1>
    <form  action="buscarCvendaServlet" method="get">  
      <div class="row">
        <div class="col-sm-6">
          <div class="grupo-entrada">
            <input placeholder="Digite codigo ou nome do cliente " type="text"
              class="campo" required name="Busca">
          </div>
        </div>
        <div class="col-sm-6">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <input type="submit" value="Adicionar" class="botao-tabela">
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>

      <table class="tabela">
    <tr>
      <th>IdCliente</th>
      <th>Nome</th>
      <th>Cpf</th>
      <th>telefone</th>
      <th>Email</th>
      <th>Situacao</th>
       <th>Excluir</th>
    
    </tr>

    <c:forEach var="c" items="${listaCliente}">
      <tr>
        <td>${c.id}</td>
        <td>${c.nome}</td>
        <td>${c.cpf}</td>
        <td>${c.telefone}</td>
        <td>${c.email}</td>
        <td>${c.situacao}</td>
        <td><a href=gerenciarProdutoServlet?acao=Excluir&id=${p.id}>Excluir</a></td>
      </tr>
    </c:forEach>
  </table>


  <div class="container">
    <h1 class="titulo-formulario">Adicionar Produto</h1>
    <form action="vendaServlet" method="get">
      <div class="row">
        <div class="col-sm-5">
          <div class="grupo-entrada">
            <input placeholder="Digite o Nome ou codigo do  produto" type="text"
              class="campo" required name="Busca">
          </div>
        </div>
        <div class="col-sm-4">
          <div class="grupo-entrada">
            <input placeholder="Digite a quantidade" type="text"
              class="campo" required name="Busca">
          </div>
        </div>
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 18px">
              <input type="submit" value="Adicionar" class="botao-tabela">
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>  
  <table class="tabela">
    <thead>
      <tr>
        <th>Codigo</th>
        <th>Produto</th>
        <th>preco</th>
        <th>categoria</th>
        <th>Excluir</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="p" items="${listaProduto}">
      <tr>

        <td>${p.id}</td>
        <td>${p.nome}</td>
        <td>${p.preco}</td>
        <td>${p.categoria}</td>
        <td><a href=gerenciarProdutoServlet?acao=Excluir&id=${p.id}>Excluir</a></td>

      </tr>
    </c:forEach>
    </tbody>
  </table>

  <div class="container">
   <form action="#" method="post">

        <h1 class="titulo-formulario">Detalhes da Venda</h1> 
       
      <div class="row">
          <div class="col-sm-4">
            <div class="grupo-entrada">
              <label for="data">Data</label>
              <input id="data" name="data" type="text" class="campo" required  >
             </div>
           </div>
           <div class="col-sm-4">
            <div class="grupo-entrada">
            <label for="categotia">Pagamento</label> 
            <select id="categotia" name="categoria" class="campo">
              <option>Selecione</option>
              <option value="Debito">Debito</option>
              <option value="Credito">Credito</option>
              <option value="Dinheiro">Dinheiro</option>
            </select>
          </div>
        </div>
       <div class="col-sm-4">
            <div class="grupo-entrada">
            <label for="categotia">Parcelamento</label> 
            <select id="categotia" name="categoria" class="campo">
              <option>Selecione</option>
              <option value="1x">1x</option>
              <option value="2x">2x</option>
              <option value="3x">3x</option>
              <option value="Utensilios">Utensilios</option>
            </select>
          </div>
        </div> 
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <input type="submit" value="Finalizar" class="botao-tabela">
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <input type="reset" value="Cancelarr" class="botao-tabela">
            </div>
          </div>
        </div>
      </div>
    </form>
    </div>

    <footer class="layout-rodape">
      <div class="container">
        <p>&copy; Muchachos. Todos os direitos reservados.</p>
      </div>
    </footer>

  </body>
</html>