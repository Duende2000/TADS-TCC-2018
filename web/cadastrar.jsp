<%-- 
    Document   : cadastrar
    Created on : 25/03/2018, 18:55:52
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>  
<div class="col-md-12 col-sm-12 col-xs-12 col-lg-12">
    <form id="formulario" class="form-horizontal"  action="UserServlet?action=ADD"  method="POST" role="form">
        <h2>Cadastro de usu�rio</h2>
        <div class="form-group">
            <label for="nome" class="col-sm-3 control-label">Nome Completo:</label>
            <div class="col-sm-9">
                <input type="text" name="nome" id="nome" placeholder="Nome completo por extenso" class="form-control">               
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-9">
                <input type="email" name="email" id="email" placeholder="Email" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="senha" class="col-sm-3 control-label">Senha</label>
            <div class="col-sm-9">
                <input type="password" name="senha" id="senha" placeholder="Senha" class="form-control" required>
            </div>
        </div>
        <div class="form-group">
            <label for="confsenha" class="col-sm-3 control-label">Confirmar senha</label>
            <div class="col-sm-9">
                <input type="password" name="confsenha" id="confsenha" placeholder="Confirmar Senha" class="form-control" required>
            </div>
        </div>    
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Cadastrar</button>
            </div>
        </div>
</form> <!-- ./form -->
</div>

<script type="text/javascript" src="assets\js\validarCadastro.js"></script>

<!-- Rodap� -->
</div>
</div>
</body>
</html>
