<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="shortcut icon" href="imagem/muchachos.png">
<link rel="stylesheet" href="css/estilobootstrap.css">
<link rel="stylesheet" href="css/componentes.css">
<title>Login</title>

</head>
<body>
    
        <div  class="container-login">
        
          <img class="img-login" src="imagem/logo.png"
		       title="HOME" width="70" height="70" alt="Muchachos" />
            <form action="loginServlet" method="post">
        	 
	            <label class="label"  for="nome">Nome</label>
	             <input id="nome" name="nome" type="text" placeholder="Digite Nome" class="campo-login" required>
				  <label class="label" for="senha">Senha</label> 
				  <input id="senha" name="senha" type="password" class="campo-login" required>
				   <div style="text-align: center; margin-top: 20px">
			     <input type="submit" name="accion" value="Logar" class="botao-tabela">
			   </div>
			   <h5 class="titulo-formulario--login1">${mensagem}</h5>
			</form>	
          </div>
  
  
</body>
</html>	  