<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciamento</title>
    
      <meta charset="utf-8">
       <link rel="shortcut icon" href="imagem/muchachos.png">
       <link rel="stylesheet" href="css/estilobootstrap.css">
       <link rel="stylesheet" href="css/componentes.css">
       
</head>
<body>

    <header class="layout-cabecalho layout-cabecalho--tabela">
      <div class="container">
      
       <nav class="navegacao">
          <a href="menu.jsp"><img src="imagem/muchachos.png" title="HOME"  width="60" height="60" alt="Muchachos" /></a>
         <div class="navegacao_menu">
             <h4 class="titulo-formulario--login">${mensagem}</h4>
         </div>   
          </nav>
      </div>
    </header>
    
   
    
  <a href="funcionarioServlet">Cadastro de Funcionario</a><br>
  <a href="gerenciarFuncionarioServlet">Consulta de Funcionario</a><br>
  <a href="clienteServlet">Cadastro de Cliente</a><br>
  <a href="gerenciarClienteServlet">Consulta de Cliente</a><br>
  <a href="produtoServlet">Cadastro de Produto</a><br>
  <a href="gerenciarProdutoServlet">Consulta de Produto</a><br>
  <a href="buscarVendaServlet">Relatorio de Vendas</a><br>
  <a href="buscarVendaServlet">Buscar por periodo</a><br>
  <a href="vendaServlet">Fazer Venda</a><br>
   <a href="index.jsp">Sair</a><br>
 
 </body>
</html>