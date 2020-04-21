<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
  
       <meta charset="utf-8">
       <link rel="shortcut icon" href="imagem/muchachos.png">
       <link rel="stylesheet" href="css/estilobootstrap.css">
       <link rel="stylesheet" href="css/componentes.css">
       
  </head>

  <body>

      
   <header class="layout-cabecalho   layout-cabecalho--tabela">
    <a href="menu.jsp"><img src="imagem/muchachos.png" width="60" height="60" alt="Muchachos" /></a> 
   </header>
      
       <h1 class="titulo-formulario--venda">venda</h1> 
        <div class="container">
          <form action="vendaServlet" method="post"> 
            <div class="row">
              <div class="col-sm-3">
                <div class="grupo-entrada">
                <label for="CodProduto">Cod. Produto</label>
                <input id="CodProduto" name="CodProduto" placeholder="Search " type="text" class="campo" required>
               </div>
             </div>

             <div class="col-sm-3">
               <div class="grupo-entrada">
               <label for="Quantidade">Quantidade</label>
                <input id="Quantidade" name="Quantidade" type="text" class="campo" required >
               </div>
             </div>
             <div class="col-sm-3">
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
       <thead>
        <tr>
          <th>Cod. Produto</th>
          <th>Produto</th>
          <th>Quantidade</th>
          <th>Valor unitario</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </tbody>
    </table>
    
   <div class="container">
    <h1 class="titulo-formulario">${mensagem}</h1>
    <form action="vendaServlet" method="post"> 
     <div class="row">
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <label for="cpf">CPF</label> 
            <input id="cpf" name="cpf" type="text" class="campo" placeholder="###.###.###-##" required >
          </div>
        </div>
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <label for="Pagamento">Forma de Pagamento</label> 
            <select id="Pagamento" name="Pagamento" class="campo">
              <option>Selecione</option>
              <option value="Dinheiro">Dinheiro</option>
              <option value="Debito">Debito</option>
              <option value="credito">Credito</option>
            </select>
          </div>
        </div>
         <div class="col-sm-3">
        <div class="grupo-entrada">
            <label for="parc">Parcelamento</label> 
            <select id="parc" name="parc" class="campo">
              <option>Selecione</option>
              <option value="1x">1x</option>
              <option value="2x">2x</option>
              <option value="3x">3x</option>
            </select>
          </div>
        </div>
         <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <input type="submit" value="Adicionar" class="botao-tabela">
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
   <h1 class="titulo-formulario--venda">Itens da venda</h1> 
   <table class="tabela">     
       <thead>
        <tr>
          <th>CodProduto</th>
          <th>Produto</th>
          <th>Quantidade</th>
          <th>Valor unitario</th>
          <th>SubTotal</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          
        </tr>
      </tbody>
    </table>

  <div class="container"> 

    <div class="row">
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <button type="button" id="btn-finalizar" class="botao-tabela">Finalizar</button>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="grupo-entrada">
            <div style="text-align: center; margin-top: 20px">
              <input type="reset" value="Cancelar" class="botao-tabela">
            </div>
          </div>
        </div>
      </div>
  
 </div>

    <footer class="layout-rodape">
      <div class="container">
        <p>&copy; Muchachos. Todos os direitos reservados.</p>
      </div>
    </footer>

    <script>
      document.querySelector('#btn-finalizar').addEventListener('click', () => {
        let data = {
          codProduto: document.querySelector('#CodProduto').value,
          quantidade: document.querySelector('#Quantidade').value,
          cpf: document.querySelector('#cpf').value,
          pagamento: document.querySelector('#Pagamento').value,
          parcelamento: document.querySelector('#parc').value
        }
        console.log(data);
      });

      /*
      CodProduto
      Quantidade
      cpf
      Pagamento
      parc
      */
    </script>

  </body>
</html>