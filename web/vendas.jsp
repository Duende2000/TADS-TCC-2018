<%-- 
    Document   : vendas
    Created on : 25/08/2018, 15:56:33
    Author     : Marcos
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>
<link href="assets/css/feed-style.css" rel="stylesheet">

<div class="col-lg-12">
    <h1>&Aacute;rea de Vendas</h1>
    <a href="home.jsp"><i class="fa fa-arrow-circle-left"></i> Voltar</a>
    <hr>
</div>

<!-- P�gina com foto e as op��es do perfil -->
<%@include file="opcoes.jsp" %>

<div class="col-lg-7 col-md-7 col-xs-12">
    <div id="pageContent" class="row">

    </div>
</div>

<div class="col-lg-2 col-md-2 col-xs-12 menu">
    <form id="formFiltro" role="form" method="POST">
        <div class="form-group">
            <label for="ordem">Ordenar por:</label>
            <select id="ordenacao" name="ordenacao" class="form-control">
                <option value="0"></option>
                <option value="1">Maior valor</option>
                <option value="2">Menor valor</option>
                <option value="3">T&iacutetulo do an&uacutencio</option>
            </select>
        </div>
        <div class="form-group">
            <label for="minValor">De: </label>
            <input id="minValor" name="minValor" class="form-control" type="number" placeholder="0.00" />
            <label for="maxValor">At&eacute: </label>
            <input id="maxValor" name="maxValor" class="form-control" type="number" placeholder="0.00" />
        </div>
        <div class="checkbox">
            <label>
                <input id="movel" name="movel" type="checkbox" value="0" /> M&oacuteveis
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input id="imovel" name="imovel" type="checkbox" value="0" /> Im&oacuteveis
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input id="material" name="material" type="checkbox" value="0" /> Materiais
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input id="pets" name="pets" type="checkbox" /> Pets?
            </label>
        </div> 
        <input type="hidden" name="action" id="action" value="FILTROANUNCIO">
        <button type="submit" class="btn btn-primary">
            Filtrar
        </button>
    </form>
</div>

<script type="text/javascript" src="assets/js/vendas.js"></script>