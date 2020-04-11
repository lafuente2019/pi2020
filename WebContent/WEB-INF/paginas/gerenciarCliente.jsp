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
					height="60" alt="Muchachos" title="HOME" /></a>
			</nav>
		</div>
	</header>

	<div class="container">
		<h1 class="titulo-formulario">${mensagem}</h1>
		<h1 class="titulo-formulario">Gerenciamento de Cliente</h1>
		
           <form  action="buscarClienteServlet" method="get">  
			<div class="row">
				<div class="col-sm-3">
					<div class="grupo-entrada">
						<input placeholder="Digite o Nome ou CPF aqui " type="text"
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
		<tr>
			<th>IdCliente</th>
			<th>Nome</th>
			<th>Cpf</th>
			<th>telefone</th>
			<th>email</th>
			<th>Situação</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>

		<c:forEach var="c" items="${clientes}">
			<tr>
				<td>${c.id}</td>
				<td>${c.nome}</td>
				<td>${c.cpf}</td>
				<td>${c.telefone}</td>
				<td>${c.email}</td>
				<td>${c.situacao}</td>
				<td><a href=clienteServlet?acao=Editar&id=${c.id}>Editar</a></td>
				<td><a href=gerenciarClienteServlet?acao=Excluir&id=${c.id}>Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	<footer class="layout-rodape">
		<div class="container">
			<p>&copy; Muchachos. Todos os direitos reservados.</p>
		</div>
	</footer>
</body>
</html>