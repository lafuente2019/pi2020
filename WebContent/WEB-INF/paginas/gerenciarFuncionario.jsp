<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/estilo.css">
<link rel="shortcut icon" href="imagem/muchachos.png">
<link rel="stylesheet" href="css/estilobootstrap.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/layout.css">
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
		<h1 class="titulo-formulario">${mensagem}</h1>
		<h1 class="titulo-formulario">Gerenciamento de colaborador</h1>
		<form>
			<div class="row">
				<div class="col-sm-3">
					<div class="grupo-entrada">
						<input placeholder="Digite o Nome ou CPF aqui " type="text"
							class="campo" required>
					</div>
				</div>

				<div class="col-sm-3">
					<input class="grupo-entrada" type="radio" name="colaborador"
						id="colaborador"> <label for="colaborador">Nome
						Colaborador</label> <input type="radio" name="colaborador"
						id="colaborador"> <label for="colaborador">CPF
						colaborador</label>
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
			<th>Id</th>
			<th>Nome</th>
			<th>Cpf</th>
			<th>Email</th>
			<th>Cargo</th>
			<th>filial</th>
			<th>Departamento</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>

		<c:forEach var="f" items="${funcionarios}">
			<tr>
				<td>${f.id}</td>
				<td>${f.nome}</td>
				<td>${f.cpf}</td>
				<td>${f.email}</td>
				<td>${f.cargo}</td>
				<td>${f.filial}</td>
				<td>${f.departamento}</td>
				<td><a href=funcionarioServlet?acao=Editar&id=${f.id}>Editar</a></td>
				<td><a href=gerenciarFuncionarioServlet?acao=Excluir&id=${f.id}>Excluir</a></td>
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