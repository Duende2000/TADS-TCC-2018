<%-- 
    Document   : aprovarAnuncio
    Created on : 05/05/2018, 15:28:04
    Author     : onurb
--%>
<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>
<div class="col-sm-12">
    <h1>Auncios do usu�rio: </h1>
</div>
<c:set var="listaDoUsuario" value="${ListaAunciosDoUusario}"/>
<c:forEach var="listaDoUsuario" items="${listaDoUsuario}">
    <div class="card">
        <h3 class="card-header primary-color white-text">Anuncio Pendente</h3>
        <div class="card-body">
            <h4 class="card-title">Descri��o: ${listaDoUsuario.descricao}</h4>
            <p class="card-text">Categoria :${listaDoUsuario.categoria}</p>
            <p class="card-text">Status do An�ncio :${listaDoUsuario.statusAnuncio}</p>
          
            <a href="AnuncioServlet?action=EXIBIRANUNCIO&idAnuncio=${listaDoUsuario.idAnuncio}" class="btn btn-primary">Ver An�ncio</a>
        </div>
    </div>
</c:forEach>

<!-- Rodap� -->
<%@include file="footer.jsp" %>
