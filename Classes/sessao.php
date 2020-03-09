<?php
/** 
*	Classe Sessao: Esta classe faz o gerenciamenito de sessoes
*		do sistema, ela informa o status  do sistema (Sessao aberta ou fechada)
*		faz a validação das tentativas de acesso ao (login), executa o logoff
*		do sistema e pode ser utilizada para verificar dados pessoais do usuario
*		logado e suas permissoes aos conteudos cadastrados;
*
*
*
*
*/

class Sessao{
	private static $usuario_id;
	
	private static $perfil_id;
	
	private static $status;
	
	public static function inicializar(){
		session_start();
		if(isset($_SESSION["usuario_id"]) && isset($_SESSION["perfil_id"])){
			Self::$usuario_id = $_SESSION["usuario_id"];
			Self::$perfil_id = $_SESSION["perfil_id"];
			Self::$status = TRUE;
		}
		else{
			Self::$usuario_id = NULL;
			Self::$perfil_id = NULL;
			Self::$status = false;			
		}
	}
	public static function status(){
		return Self::$status;
		
	}
	
	public static function validar_login(String $login, String $senha){
	#capturando  o campo login, digitando pelo ususario no form
	$login = isset($_POST["login"])? $_POST["login"]: NULL;
	#capturando  o campo senha, digitando pelo ususario no form
	$senha = isset($_POST["senha"])? md5($_POST["senha"]): NULL;
	
	#1-verficar se o login e senha foram preenchidos
	if($login == NULL || $senha == NULL){
		return false;
	}
	#2 - verificar se o login e senha estacorretos no BD
	$select_log = "select id,perfil_id, habilitado
					FROM usuario
					WHERE login = '$login'
					AND senha = '$senha'";
	
	$usuario = DB::consultar($select_log);
	if(count($usuario) == 0){
		return false;	
	}
	
	#3 - verificar se o usuario esta habilitado
	$u =$usuario[0];
	if($u["habilitado"] == false){
		return false;
	}
	#registrando o ID do ususario validado
	$_SESSION["usuario_id"] = $u["id"];
	#registrando o ID do perfil do usuario validado
	$_SESSION["perfil_id"] = $u["perfil_id"];
	
	return true;
	}
	public static function efetuar_logout(){
		unset($_SESSION["usuario_id"]);
		unset($_SESSION["perfil_id"]);
	}
	public static function usuario(){
		if (Self::status() == false) {
			return NULL;
		}

		$usuario = DB::consultar(
			"SELECT *
			FROM usuario
			WHERE id =" . Self::$usuario_id);	
		
		return $usuario[0];
		
	}
	public static function perfil(){
		if (Self::status() == false) {
			return NULL;
		}

		$perfil = DB::consultar(
			"SELECT *
			FROM perfil
			WHERE id =" . Self::$perfil_id);	
		
		return $perfil[0];
		
		
	}
}


?>