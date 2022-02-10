<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Produtos</title>
<style>
body {
	background: linear-gradient(to bottom, #66ffff 0%, #ffffff 100%);
	background-repeat: no-repeat;
	height: 900px;
}

table {
	margin: auto;
	background-color: snow;
}

th {
	border: solid 2px black;
	height: 50px;
	width: 80px;
}

td {
	border: solid 2px black;
	text-align: center;
}

h1 {
	text-align: center;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<h1>Lista de Produtos</h1>

	<table style="border: solid 1px black;">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Tipo</th>
			<th>Ver+</th>
			<th>Vencido</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${produtos}" var="p">
			<tr <c:if test="${p.vencido}">style=" color:red;"</c:if>>
				<td>${p.id}</td>
				<td>${p.nome}</td>
				<td>${p.tipoProduto.toString()}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataValidade}"/></td>
				<td>${p.vencido ? "sim" : "não"}</td>
				<td><a href="excluirProduto?idProduto=${p.id}">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>