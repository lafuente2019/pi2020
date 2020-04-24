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
          <a href="menu.jsp"><img src="imagem/muchachos.png" title="HOME"  width="60" height="55" alt="Muchachos" /></a>
          
         <div class="navegacao_menu">
             <button class="botao-chaveador js-botao-chaveador"></button>
             
            <ul  class="menu  js-menu">
             <li class="menu__itens"><a href="funcionarioServlet">Cadastro de Funcionario</a><br></li>
             <li class="menu__itens"><a href="gerenciarFuncionarioServlet">Consulta de Funcionario</a><br></li>
             <li class="menu__itens"> <a href="clienteServlet">Cadastro de Cliente</a><br></li>
             <li class="menu__itens"><a href="gerenciarClienteServlet">Consulta de Cliente</a><br></li>
             <li class="menu__itens"> <a href="produtoServlet">Cadastro de Produto</a><br></li>
             <li class="menu__itens"> <a href="gerenciarProdutoServlet">Consulta de Produto</a><br></li>
             <li class="menu__itens"><a href="buscarVendaServlet">Relatorio de Vendas</a><br></li>
             <li class="menu__itens"> <a href="vendaServlet">Fazer Venda</a><br></li>
             <li class="menu__itens"><a href="index.jsp">Sair</a><br></li>
            </ul>
         </div>   
          </nav>
      </div>
    </header>
     <h4 class="titulo-formulario">${mensagem}</h4>
    <img class="img-cosmeticos" src="imagem/cosmeticos_perfumaria.jpg" width="100%" height="100%" >
    
    <script src="javaScripts/app.js"></script>
    
    <footer class="layout-rodape-cos">
        <p>&copy; Muchachos. Todos os direitos reservados.</p>
     </footer>   
 </body>
</html>