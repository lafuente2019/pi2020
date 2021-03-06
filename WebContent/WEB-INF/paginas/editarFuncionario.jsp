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
			<nav class="navegacao  ">
				<a href="menu.jsp"><img src="imagem/muchachos.png"
					title="Home" width="60" height="55" alt="Muchachos" /></a>
			</nav>
		</div>
	</header>
	
	
	<div class="container">
		<form action="funcionarioServlet" method="post">
		      
              <h1 class="titulo-formulario">${mensagem}</h1>
              
			<h1 class="titulo-formulario">Cadastro de Funcionario</h1>
           
            <div class="grupo-entrada">
				 <input type="hidden" name="id"  value="${funcionario.id}">
			</div>
			<div class="row">
         <div class="col-sm-10">
	      <div class="grupo-entrada">
		    <label for="id">ID</label>
		 	<input id="id" name="id" disabled type="text" class="campo" required  >
	      </div>
	    </div>
		<div class="col-sm-2">
		  <div class="grupo-entrada">
		   <label for="situacao">Status</label> 
			  <select id="situacao" name="situacao" class="campo">
	   		 	<option value="${funcionario.situacao}">${funcionario.situacao}</option>
			   	 <option value="Ativo">Ativo</option>
			  	 <option value="Inativo">Inativo</option>
		 	  </select>
		     </div>
		    </div>
		   </div>
		   <div class="row">
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="nome">Nome</label>
						 <input id="nome" name="nome" type="text" class="campo" value="${funcionario.nome}" required >
					</div>
				</div>
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="email">Email</label>
						 <input id="email" name="email" type="email" class="campo"  value="${funcionario.email}" required>
					</div>
				  </div>
		   	     </div>
		     
			<div class="row">
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="telefone">Telefone</label> 
						<input id="telefone" name="telefone" type="text" class="campo" value="${funcionario.telefone}" required >
					</div>
				</div>
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="senha">Senha</label>
						 <input id="senha" name="senha"  type="password"  value="${funcionario.senha}" class="campo" >
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="cpf">CPF</label> 
						<input id="cpf" name="cpf" type="text" class="campo" placeholder="###.###.###-##" value="${funcionario.cpf}" required >
					</div>
				</div>
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="cargo">Cargo</label> 
						<select id="cargo" name="cargo" class="campo">
							<option selected value="${funcionario.cargo}">Selecione</option>
							<option value="Vendedor">Vendedor</option>
							<option value="Publicitario">Publicidade</option>
							<option value="gerente">Gerente</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="rg">RG</label> 
						<input id="rg" name="rg" type="text" class="campo" placeholder="##.###.###-#"  value="${funcionario.rg}" required>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="filial">Filial</label> 
						<select id="filial" name="filial" class="campo">
							<option selected value="${funcionario.filial}">Selecione</option>
							<option value="Santo amaro">Bahia</option>
							<option value="S�o paulo">S�o Paulo</option>
							<option value="Rio de janeiro">Rio de janeiro</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<div class="grupo-entrada">
						<label for="dataNascimento">Data de nascimento </label>
						 <input name="dataNascimento"id="dataNascimento" type="date" class="campo" value="${funcionario.dataNascimento}" required >
					</div>
				</div>
				<div class="col-sm-4">
					<div class="grupo-entrada">
						<label for="sexo">Sexo</label> 
						<select id="sexo" name="sexo" class="campo">
							<option value="${funcionario.sexo}">${funcionario.sexo}</option>
							<option value="Masculino">Masculino</option>
							<option value="Feminino">Feminino</option>
						</select>
					</div>
				</div>
			<div class="col-sm-4">
			  <div class="grupo-entrada">
			   <label for="departamento">Depto</label>
				 <select id="departamento" name="departamento" class="campo" >
					<option value="${funcionario.departamento}">${funcionario.departamento}</option>
					<option value="Vendas">venda</option>
					<option value="Market">Marketing</option>
					<option value="ADM">Administra��o</option>
					<option value="TI">TI</option>
				</select>
			  </div>
			</div>
		  </div>

			<div class="row">
				<div class="col-sm-4">
					<div class="grupo-entrada">
						<label>Logradouro</label> 
						<input type="text" name="logradouro" class="campo" value="${funcionario.logradouro}"required >
					</div>
				</div>
				<div class="col-sm-4">
					<div class="grupo-entrada">
						<label>Numero</label> 
						<input type="text" name="numero" class="campo" value="${funcionario.numero}" required>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="grupo-entrada">
						<label for="complemento">Complemento</label> 
						<input id="complemento" name="complemento" type="text" class="campo"value="${funcionario.complemento}" required >
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label>Bairro</label>
						 <input type="text" name="bairro" class="campo" value="${funcionario.bairro}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="estado">Estado</label> 
						<select id="estado" name="estado" class="campo">
							<option value="${funcionario.estado}">${funcionario.estado}</option>
							<option value="BA">Bahia</option>
							<option value="SP">S�o Paulo</option>
							<option value="RJ">Rio de janeiro</option>
						</select>
					</div>
				</div>
			</div>
	   	<div class="row">
	   	 <div class="col-sm-6">
			<div class="grupo-entrada">
				<label for="cidade">Cidade</label> 
				<input id="cidade" name="cidade" type="text" class="campo" value="${funcionario.cidade}" required >
			</div>
	    	  </div>	
				<div class="col-sm-6">
					<div class="grupo-entrada">
						<label for="estadoCivil">Estado civil</label> 
						<select id="estadoCivil" name="estadoCivil" class="campo">
							<option selected value="${funcionario.estadoCivil}">${funcionario.estadoCivil}</option>
							<option value="Casado(a))">Casado</option>
							<option value="Solteiro(a))">Solteiro(a)</option>
							<option value="Divorciado(a)">Divorciado</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<div style="text-align: center; margin-top: 20px">
						<input type="reset" value="cancelar" class="botao  botao--principal">
					</div>
				</div>
				<div class="col-sm-3">
					<div style="text-align: center; margin-top: 20px">
						<input type="submit" value="Salvar" class="botao  botao--principal">
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


