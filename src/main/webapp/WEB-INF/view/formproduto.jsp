<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
 <style>
        body {
            background-color: darkgray;
        }

        form {
            text-align: -webkit-center;
            background-color: azure;
            height: 100vh;
            padding: 2%;
        }

        input {
            display: block;
        }

        label {
            font-weight: bold;
        }

        input[type="submit"] {
            margin-top: 1%;

        }
        
         select {
            display: block;
        }
    </style>
</head>
<body>
	
	
	<div class="container">
        <form action="SalvarProduto">
        <h1>Formulário de cadastro de produto</h1>
            <fieldset>
                <label>Nome:</label>
                <input type="text" name="nome" value="${produto.nome}">

                <label>Data de Validade</label>
                <input type="date" name="dataValidade" value="${produto.dataValidade.time}">

                <label>Preço:</label>
                <input type="text" name="preco" value="${produto.preco}">

                <label>Estoque</label>
                <input type="number" name="estoque" value="${produto.estoque}">

                <label>Tipo do Produto</label>
                <select name="tipoProduto">
                	<c:forEach items="${tipos}" var="t">
                		<option value="${t}">${t.toString()}</option>
                	</c:forEach> 
                </select>

                <input type="submit" value="Salvar">
            </fieldset>
        </form>
    </div>
</body>
</html>