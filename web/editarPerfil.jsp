<%-- 
    Document   : editarPerfil
    Created on : 09/07/2018, 19:39:31
    Author     : onurb
--%>

<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:set var="msg" value="Fa�a login para acessar esta p�gina!" scope="request"/>
    <c:redirect url="index.jsp" />
</c:if>

<div class="container">
    <h1>Edite seu Perfil</h1>
    <hr>
    <div class="row">
        <!-- left column -->
        <div class="col-md-3">
            <div class="text-center">
                <img src="${user.getFoto()}" class="avatar img-circle" alt="avatar">
                <h6>Carregar uma foto nova...</h6>

                <input type="file" class="form-control">
            </div>
        </div>

        <!-- edit form column -->
        <div class="col-md-9 personal-info">

            <h3>Informa��es do perfil</h3>

            <form id="formEditar" class="form-horizontal" action="UserServlet?action=EDIT"  method="POST" role="form">
                <input id="cdEndereco" type="hidden" name="cdEndereco" value="<c:out value="${userSearch.getCdEndereco()}"/>">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Nome Completo:</label>
                    <div class="col-lg-8">
                        <input class="form-control" name="nome" id="nome" type="text" value="<c:out value="${user.getNome()}"/>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="comment">Uma breve descri��o sobre voc�:</label>
                    <textarea class="form-control" rows="5" id="comment"></textarea>
                </div>
                   <div class="form-group">
                    <label for="comment">Interesses ou qualquer outra coisa relacionada a perfil:</label>
                    <textarea class="form-control" rows="5" id="comment"></textarea>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-lg-9 col-md-9 col-xs-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block" onclick="confirm('Deseja mesmo alterar os dados?');">Salvar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- <script type="text/javascript">
    $(document).ready(function () {
        var senha = $('#senha');
        var confirmaSenha = $('#confirmaSenha');
        $('#confirmaSenha').change(function () {
            $(senha).attr('required', 'true');
            $(confirmaSenha).attr('required', 'true');

            if ($(senha).val() !== $(confirmaSenha).val()) {
                $('#alertaSenha').css('display', 'block');
            } else {
                $('#alertaSenha').css('display', 'none');
            }
        });

        $('#formEditar').submit(function (event) {
            if ($(senha).val() !== $(confirmaSenha).val()) {
                $('#alertaSenha').css('display', 'block');
                event.preventDefault();
                $(window).scrollTop($('#alertaSenha').scrollTop());
            }
        });
    });
</script> -->
<%@include file="footer.jsp" %>
