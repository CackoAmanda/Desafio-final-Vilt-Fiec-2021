<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec"%>
<%@ page session="true" %>

<fiec:armazenamento />

<!doctype html>
<html lang="pt-br">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Treinamento Indaiatuba Abril 2021</title>

<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/utilizando-bootstrap.css">
</head>

<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<c:set var="quantidadeDeAlunos" value="${fn:length(alunos)}" />
	<c:set var="aprovados" value="${false}" />
	<c:set var="reprovados" value="${false}" />
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div>
		<a class="navbar-brand" href="#conteudo">Conteúdo</a> 
		<c:if test="${loginSucesso == true}">
		<a class="navbar-brand" href="#cadastrar">Cadastrar</a>
		</c:if>
		<c:if test="${quantidadeDeAlunos > 0}">
			<a class="navbar-brand" href="#lista">Lista de alunos</a>
		</c:if>
		</div>
		<c:if test="${loginSucesso == false || loginSucesso == null}">
		      <div class="d-grid gap-2 col-2 d-md-flex justify-content-md-end">
		      <button id= "login" class="btn btn-light"
		      onclick="window.location='login.jsp'">LOGIN</button>
		      </div>
		</c:if>
		<c:if test="${loginSucesso == true}">
			<form class="d-grid gap-2 col-2 d-md-flex justify-content-md-end" action="logout" method="POST">
			<button type="submit" value="logout" id="logout" 
			class="btn btn-light" >SAIR</button>
			</form>
		</c:if>
	</nav>

	<header>
		</br></br><h1>Treinamento Indaiatuba Abril 2021</h1>
	</header>

	<section id="banner">
		<img
			src="https://i.picsum.photos/id/210/1600/350.jpg?hmac=u5C8ihcdKxZE0rfrOYEZtcZAtuGdQGFflz4x4n9dFDA"
			alt="">
	</section>

	<section id="conteudo">
		<div class="my-container">
			<h2>HTML básico</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
			<p>
			<ul>
				<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
					sed do eiusmod</li>
				<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
					sed do eiusmod</li>
				<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
					sed do eiusmod</li>
				<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
					sed do eiusmod</li>
				<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
					sed do eiusmod</li>
			</ul>
			</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
		</div>
	</section>
	
	<c:if test="${loginSucesso == true}">
	<section id="cadastrar">
		<div class="my-container">
			<h2>Cadastro de Aluno</h2>
			<form class="needs-validation" action="index.jsp"  novalidate>
				<ul>
					<div class="row g-3">
						<li class="mb-3"><label class="form-label">Nome
								completo*</label> <input type="text" class="form-control" id="nome"
							name="nome" onclick="style.outline = null" required></li>
						<li class="col-md-6"><label class="form-label">CPF*</label> <input
							type="text" class="form-control" id="cpf" name="cpf"
							onclick="style.outline = null" required></li>
						<li class="col-md-3"><label class="form-label">Nascimento*</label>
							<input type="text" class="form-control" id="data"
							data-mask="00/00/0000" name="nasc" onclick="style.outline = null"
							required placeholder="dd/mm/aaaa"></li>
						<li class="col-md-3"><label class="form-label">Sexo*</label>
							<select id="sexo" class="form-select" name="sexo"
							onclick="style.outline = null" required>
								<option value="">Selecione</option>
								<option value="Masculino">Masculino</option>
								<option value="Feminino">Feminino</option>
						</select></li>
						<li class="col-md-6"><label class="form-label">Email*</label>
							<input type="email" class="form-control" id="mail" name="mail"
							onclick="style.outline = null" required></li>
						<li class="col-md-6"><label class="form-label">Celular*</label>
							<input type="text" class="form-control" id="cel" name="cel"
							onclick="style.outline = null" required></li>
						<hr>
						<li class="col-md-6"><label class="form-label">Nível*</label>
							<select id="nivel" class="form-select" name="nivel"
							onclick="style.outline = null" required>
								<option value="">Selecione</option>
								<option value="novato">Novato</option>
								<option value="formado">Formado</option>
								<option value="veterano">Veterano</option>
						</select></li>
						<li class="col-md-6"><label class="form-label">Média*</label>
							<input type="text" class="form-control" id="media" name="media"
							onclick="style.outline = null" required></li>
				</ul>
				<hr>
				<p>* Campo obrigatório</p>
				<hr>
				<button type="submit" class="btn btn-dark"
					onclick="return validar()">Cadastrar</button>
			</form>
		</div>
	</section>
	</c:if>

	<c:if test="${quantidadeDeAlunos > 0}">
		<section id="lista">
			<div class="my-container">
				<h2>Lista de alunos</h2>
				<div class="table-responsive-xxl">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nome completo</th>
								<th>CPF</th>
								<th>Nascimento</th>
								<th>Sexo</th>
								<th>Email</th>
								<th>Celular</th>
								<th>Nivel</th>
								<th>Média</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="aluno" items="${alunos}">
								<tr>
									<td><c:out value="${aluno.nome}" /></td>
									<td><c:out value="${aluno.cpf}" /></td>
									<td><fmt:formatDate value="${aluno.dataDeNascimento}"
											pattern="dd/MM/yyyy" /></td>
									<td><c:out value="${aluno.sexo}" /></td>
									<td><c:out value="${aluno.email}" /></td>
									<td><c:out value="${aluno.celular}" /></td>
									<td><c:out value="${aluno.nivel}" /></td>
									<c:choose>
										<c:when test="${aluno.media >= 7}">
											<c:set var="aprovados" value="${true}" />
											<td class="bg-success text-white"><c:out
													value="${aluno.media}" /></td>
										</c:when>
										<c:otherwise>
											<c:set var="reprovados" value="${true}" />
											<td class="bg-danger text-white"><c:out
													value="${aluno.media}" /></td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
		</section>
	</c:if>

	<c:if test="${aprovados == true}">
		<section id="lista">
			<div class="my-container">
				<h2>Lista de aprovados</h2>
				<div class="table-responsive-xxl">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nome completo</th>
								<th>CPF</th>
								<th>Nascimento</th>
								<th>Sexo</th>
								<th>Email</th>
								<th>Celular</th>
								<th>Nivel</th>
								<th>Média</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="aluno" items="${alunos}">
								<c:if test="${aluno.media >= 7}">
									<tr>
										<td><c:out value="${aluno.nome}" /></td>
										<td><c:out value="${aluno.cpf}" /></td>
										<td><fmt:formatDate value="${aluno.dataDeNascimento}"
												pattern="dd/MM/yyyy" /></td>
										<td><c:out value="${aluno.sexo}" /></td>
										<td><c:out value="${aluno.email}" /></td>
										<td><c:out value="${aluno.celular}" /></td>
										<td><c:out value="${aluno.nivel}" /></td>
										<td class="bg-success text-white"><c:out
												value="${aluno.media}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
		</section>
	</c:if>

	<c:if test="${reprovados == true}">
		<section id="lista">
			<div class="my-container">
				<h2>Lista de reprovados</h2>
				<div class="table-responsive-xxl">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nome completo</th>
								<th>CPF</th>
								<th>Nascimento</th>
								<th>Sexo</th>
								<th>Email</th>
								<th>Celular</th>
								<th>Nivel</th>
								<th>Média</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="aluno" items="${alunos}">
								<c:if test="${aluno.media < 7}">
									<tr>
										<td><c:out value="${aluno.nome}" /></td>
										<td><c:out value="${aluno.cpf}" /></td>
										<td><fmt:formatDate value="${aluno.dataDeNascimento}"
												pattern="dd/MM/yyyy" /></td>
										<td><c:out value="${aluno.sexo}" /></td>
										<td><c:out value="${aluno.email}" /></td>
										<td><c:out value="${aluno.celular}" /></td>
										<td><c:out value="${aluno.nivel}" /></td>
										<td class="bg-danger text-white"><c:out
												value="${aluno.media}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
		</section>
	</c:if>
	<footer>
		Copyright 2021 | VILT GROUP <br> <br>
		<div id="button" class="d-grid gap-2 d-md-block">
			<button type="button" id="botao-fiec" class="btn btn-link"
				onclick=" window.open('https://www.fiec.com.br/site/index.do','_blank')"
				href="#fiec">
				<img
					src=https://fiecvirtual.com.br/pluginfile.php/1/core_admin/logo/0x300/1575286970/005.png
					width="103.2" height="30" alt="">
			</button>
			<button type="button" id="botao-vilt" class="btn btn-link"
				onclick=" window.open('https://www.vilt-group.com/pt/','_blank')"
				href="#vilt">
				<img
					src=https://ligaempresarialportugal.mygol.es/upload/68/BF/nxbmxtno.png
					width="100.58" height="30" alt="">
			</button>
		</div>
	</footer>

	<!-- js -->
	
	
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/utilizando-bootstrap.js"></script>
	<script src="js/validacoes.js" type="text/javascript"></script>

</body>

</html>
