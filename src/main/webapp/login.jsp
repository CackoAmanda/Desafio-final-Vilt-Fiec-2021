<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Login Treinamento Indaiatuba Abril 2021</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
</head>

<body class="container">
	<div class="form">
		<h1>Iniciar sessão</h1></br>
		<form action="login" method="post">
				<input type="text" name="username" class="form-control" placeholder="Usuário"></br>
				<input type="password" name="senha" class="form-control" placeholder="Senha"></br>
				<button type="submit" value="login">Acessar</button>
				<c:if test="${senhaIncorreta == true}"> 
				</br></br><a>Usuário e/ou senha incorretas</a>
				</c:if>
		</form>
	</div>

</body>
</html>