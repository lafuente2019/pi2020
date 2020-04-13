<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Muchachos</title>
<link rel="shortcut icon" href="imagem/muchachos.png">
<link rel="stylesheet" href="css/estilobootstrap.css">
<link rel="stylesheet" href="css/componentes.css">
</head>
<body>
	<header class="layout-cabecalho">
		<div class="container">
			<nav class="navegacao">
				<a href="menu.jsp"><img src="imagem/muchachos.png"
					title="HOME" width="60" height="60" alt="Muchachos" /></a>
			</nav>
		</div>
	</header>

	<div class="container">
		<form action="produtoServlet" method="post">
          <h1 class="titulo-formulario">${mensagem}</h1>
          <h1 class="titulo-formulario">Cadastro de Produto</h1>
			
            <div class="grupo-entrada">
				 <input type="hidden" name="id" value="${produto.id}">
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="grupo-entrada">
						<label for="id">ID</label> <input id="id" name="id" disabled
							type="text" class="campo" value="${produto.id}" required>
					</div>
				</div>
			</div>

			 <div class="row">
               <div class="col-sm-10">
			     <div class="grupo-entrada">
			      <label for="nome">Nome do Produto</label>
			       <input id="nome" name="nome" type="text" class="campo" value="${produto.nome}"required>
			      </div>
			   </div>
			 <div class="col-sm-2">
			   <div class="grupo-entrada">
			     <label for="situacao">Status</label> 
					<select id="situacao" name="situacao" class="campo">
	   				 <option value="${produto.situacao}">${produto.situacao}</option>
				   	 <option value="Ativo">Ativo</option>
				  	 <option value="Inativo">Inativo</option>
					</select>
		   	 	  </div>
		       </div>
    	   </div>
			<div class="grupo-entrada">
				<label for="preco">Preço</label> <input id="preco" name="preco"
					type="text" class="campo" value="${produto.preco}" required>
			</div>

			<div class="grupo-entrada">
				<label for="quantidade">Quantidade</label> <input id="quantidade"
					name="quantidade" type="text" class="campo" value="${produto.quantidade}" required>
			</div>

			<div class="grupo-entrada">
				<label for="descricao">Descrição</label>
				<textarea name="descricao" cols="50" rows="5"></textarea>
			</div>


			<div class="grupo-entrada">
				<label for="categotia">Categoria</label> <select id="categotia"
					name="categoria" class="campo">
					<option selected value="${produto.categoria}">${produto.categoria}</option>
					<option value="Higiene">Higiene</option>
					<option value="Beleza">Beleza</option>
					<option value="Perfumes">Perfumes</option>
					<option value="Utensilios">Utensilios</option>
				</select>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<div class="grupo-entrada">
						<div style="text-align: center; margin-top: 20px">
							<input type="submit" value="Salvar" class="botao-tabela">
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