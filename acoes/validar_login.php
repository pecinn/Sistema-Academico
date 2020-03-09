<?php
	#capturando  o campo login, digitando pelo ususario no form
	$login = isset($_POST["login"])? $_POST["login"]: NULL;
	#capturando  o campo senha, digitando pelo ususario no form
	$senha = isset($_POST["senha"])? md5($_POST["senha"]): NULL;
	
	if(Sessao::validar_login($login, $senha) ==  false){
		echo "Deu ZICA";
	}
	else{
		header("Location: index.php");
		echo"<h1> Logado com sucesso! </h1>";
			}