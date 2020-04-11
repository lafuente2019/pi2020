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
				<a href="index.html"><img src="imagem/muchachos.png" width="60"
					height="60" alt="Muchachos" /></a>
			</nav>
		</div>
	</header>

	<div class="container">
		<h1 class="titulo-formulario">Consulta de Produto</h1>
		<form action="buscarProdutoServlet" method="get">
			<div class="row">
				<div class="col-sm-3">
					<div class="grupo-entrada">
						<input placeholder="Digite o Nome ou codigo aqui " type="text"
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
				<th>Codigo</th>
				<th>Produto</th>
				<th>preco</th>
				<th>quantitade</th>
				<th>categoria</th>
				<th>Editar</th>
				<th>Excluir</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${listaProduto}">
			<tr>
				<td>${p.id}</td>
				<td>${p.nome}</td>
				<td>${p.preco}</td>
				<td>${p.quantidade}</td>
				<td>${p.categoria}</td>
				<td><a href=produtoServlet?acao=Editar&id=${p.id}>Editar</a></td>
				<td><a href=gerenciarProdutoServlet?acao=Excluir&id=${p.id}>Excluir</a></td>
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