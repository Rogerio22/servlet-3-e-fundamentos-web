<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<body>
	Bem vindo ao nosso gerenciador de empresas!<br/>
	<c:if test="${usuarioLogado!=null}">
		Voce esta logado como ${usuarioLogado.email}
	</c:if>
	<form action="executa?tarefa=NovaEmpresa" method="POST">
		Nome: <input type="text" name="name"/>
		<input type="submit" value="Enviar"/>
	</form>
	
	<form action="executa" method="POST">
		<input type="hidden" name="tarefa" value="BuscaEmpresa">
		Procurar:<input type="text" name="filter">
		<input type="submit" value="Pesquisar">
 	</form>

	<form action="login" method="POST">
		Email: <input type="text" name="email"/> <br /> 
		Senha: <input type="text" name="senha"/> 
		<input type="submit" value="Login">
	</form>

	<form action="executa?tarefa=Logout" method="POST">
		<input type="submit" value="Deslogar"/> <br />
	</form>
</body>
</html>