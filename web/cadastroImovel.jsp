-<%-- 
    Document   : cadastrar
    Created on : 25/03/2018, 18:55:52
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>

<script>
function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}

function numeros( campo )
{
    if ( isNaN( campo.value.substring(campo.value.length-1) ) )
        campo.value = campo.value.substr( 0 , campo.value.length - 1 );
}
</script>


<div class="form-group col-md-2"></div>
    <div class="form-group col-md-10">
<form class="form-horizontal"  action="AnuncioServlet?action=ADDIMV"  method="POST" role="form" enctype="multipart/form-data">
    <h2>Cadastro de Anuncio: Im�vel</h2>
        <label for="select" class="col-sm-9 control-label">Qual a categoria do seu Imovel ?</label>
        <div class="col-sm-9">
            <c:set var="lista" value="${listaCatImovel}"/>
            <select class="selectpicker form-control" name="catImovel" id="select">
                <option value="0">SELECIONE</option>
                <c:forEach var="lista" items="${lista}">
                    <option value="${lista.id}"> ${lista.descricao}</option>
                </c:forEach>
            </select>
        </div>
    
        <br><label for=titulo class="col-sm-3 control-label">Titulo:</label>
        <div class="col-sm-9">
            <input type="text" name="titulo" id="titulo" placeholder="" class="form-control" autofocus required> 
        </div>
        <br><label for="descricao" class="col-sm-9 control-label">Descri��o:</label>
        <div class="col-sm-9">
            <textarea class="form-control" rows="5" id="descricao" name="descricao"></textarea>
            <span class="help-block">Descreva seu anuncio</span>
        </div>
        <br><label for="quantidade" class="col-sm-10 control-label">O im�vel comporta at� quantas pessoas?</label>
        <div class="col-sm-2">
            <input type="number" name="quantidade" id="quantidade" placeholder="" class="form-control" autofocus required>
        </div>
        <br><label for="opcoes" class="col-sm-10 control-label">� autorizado pets na residencia?:</label>
        <div id="opcoes">
            <label class="radio-inline"><input type="radio" name="optpet" value="1">Sim</label>
            <label class="radio-inline"><input type="radio" name="optpet" value="0">N�o</label>
        </div>
        <br><label for="valor" class="col-sm-3 control-label">Pre�o do aluguel:</label>
        <div class="col-sm-6">
            <input type="number" name="valor" id="valor" placeholder="" class="form-control" step="0.01" autofocus>
            <span class="help-block">Insira um valor caso deseje.</span>
        </div>
    
        <br><label for="rua" class="col-sm-3 control-label">Logradouro:</label>
        <div class="col-sm-9">
            <input type="text" name="rua" id="rua" placeholder="" class="form-control" autofocus required>
        </div>
        <br><label for="num" class="col-sm-3 control-label">N�mero:</label>
        <div class="col-sm-2">
            <input type="number" name="num" id="num" placeholder="" class="form-control" autofocus required>
        </div>
        <br><label for="cep" class="col-sm-3 control-label">CEP:</label>
        <div class="col-sm-9">
            <input type="text" name="cep" id="cep" maxlength="9" placeholder="" class="form-control" onkeyup="numeros( this )" OnKeyPress="formatar('#####-###', this)" required>
        </div>
        <br><label for="cidade" class="col-sm-3 control-label">Cidade:</label>
        <div class="col-sm-9">
            <input type="text" name="cidade" id="cidade" placeholder="" class="form-control" autofocus required>
        </div>
        <br><label for="estado" class="col-sm-3 control-label">Estado:</label>
        <div class="col-sm-2">
            <input type="text" name="estado" id="estado" placeholder="" class="form-control" autofocus required maxlength="2">
        </div>
        <br><label for="comple" class="col-sm-3 control-label">Complemento:</label>
        <div class="col-sm-9">
            <input type="text" name="comple" id="comple" placeholder="" class="form-control" autofocus>
        </div>
        <br><label for="file" class="col-sm-9 control-label">Selecione uma Imagem</label>
        <div class="col-sm-9">
            <input type="file" name="file" id="file" placeholder="" class="form-control" autofocus required>
        </div>
    
    <div class="form-group" id="1" style="display:none;">
        <label for="file" class="col-sm-3 control-label"></label> 
        <div class="col-sm-9" >
            <input type="file" name="file"  placeholder="" class="form-control" autofocus >
        </div>
    </div>
    <div class="form-group" id="2" style="display:none;">
        <label for="file" class="col-sm-3 control-label"></label> 
        <div class="col-sm-9" >
            <input type="file" name="file"  placeholder="" class="form-control" autofocus >
        </div>
    </div>
    <div class="form-group" id="3" style="display:none;">
        <label for="file" class="col-sm-3 control-label"></label> 
        <div class="col-sm-9" >
            <input type="file" name="file"  placeholder="" class="form-control" autofocus >
        </div>
    </div>
    <div class="form-group" id="4" style="display:none;">
        <label for="file" class="col-sm-3 control-label"></label> 
        <div class="col-sm-9" >
            <input type="file" name="file"  placeholder="" class="form-control" autofocus >
        </div>
    </div>
    
        <br><label for="file" class="col-sm-3 control-label"></label>
        <div class="col-sm-9">
            <button type="button" name="button" id="button" class="btn btn-block btn-dark" onclick="myFunction()">Adicionar Imagem</button>
        </div>
        <div class="col-sm-9 col-sm-offset-3">
            <br><button type="submit" class="btn btn-primary btn-block">Cadastrar</button>
        </div>
        
        <div class="col-sm-9">
            <br><a href="home.jsp" class="btn btn-primary btn-block" role="button">Cancelar</a>
        </div>
    
    <script>
        i = 1;
        function myFunction() {
            var x = document.getElementById(i);
            x.style.display = 'inline';
            i++;
        }
    </script>
</form>   <!-- /form -->
</div> <!-- ./row -->
<div class="col-sm-3"></div>
<!-- Rodap� -->
</div> <!-- ./row -->
</div> <!-- ./container -->
<!-- Importando: 1-Bootstrap -->
<script src="assets/bootstrap/js/bootstrap.bundle.js" type="text/javascript"></script>

</body>
</html>
