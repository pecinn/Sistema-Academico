<h1>Login do Sistema</h1>
<form class ="form-horizontal" action ="index.php?acao=validar_login" method = "post">
	<div class = "form-group">
		<label>	Login:</label>
		<input type = "text" name = "login" placeholder = "Informe seu login" required class = "form-control"> 
	</div>
	
	<div class = "form-group">
		<label>	Senha:</label>
		<input type = "password" name = "senha" placeholder = "Informe sua senha" required class = "form-control"> 
	</div>	
	<div class = "form-group">
		<input type = "submit" value = "Acessar"> <br> </br>
	</div>
</form>