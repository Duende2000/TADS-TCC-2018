<%-- 
    Document   : escolhaAnuncio
    Created on : 14/04/2018, 14:36:39
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>



<link href="assets/css/feed-style.css" rel="stylesheet">

<!-- P�gina com foto e as op��es do perfil -->
<%@include file="opcoes.jsp" %>

<!-- Script para dar destaque na op��o navegada -->
<script>  
    $(document).ready(function () {
  $("#opRanuncio").addClass("highlight");
});
</script>

<div class="col-8 menu-fixed-center">
    <div class="panel panel-body">             
        <!-- Usu�rio Comum -->
        <c:if test="${user.getTipoUsuario()== 2}">
            <h4>Escolha uma categoria:</h4>
             <a href="home.jsp"><i class="fa fa-arrow-circle-left"></i> Voltar</a>
             <hr>       
            <div class="container-fluid col-8">                                                         
                <div class="list-group">
                    <div class="list-group-item">
                        <a  href="MainPageServlet?action=ANUNCIO&tipo=imovel">
                            <img class="d-block img-fluid" src="img\icones\house.png">Im�vel
                        </a>
                    </div>
                    <div class="list-group-item">
                        <a  href="MainPageServlet?action=ANUNCIO&tipo=movel">
                            <img class="d-block img-fluid" src="img\icones\chair.png">M�vel    
                        </a>
                    </div>
                    <div class="list-group-item">
                        <a  href="MainPageServlet?action=ANUNCIO&tipo=material">
                            <img class="d-block img-fluid" src="img\icones\books.png">Material
                        </a>
                    </div>
                </div>                                                            
            </div>                                    
        </c:if>    
    </div>
</div> <!-- fim .col-lg-6 -->
</div> <!-- ./row -->
</div> <!-- ./container -->
</body>
</html>
