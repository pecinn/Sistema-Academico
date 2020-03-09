	<?php
	/** 
	#esta classe executa  ações dentro do sistema. Ações são operaações
	#executadas pelos usuários que não dependem de permissão.
	#
	#Exemplos:
	#	- login: cria uma interface de validação de usuarios
	#	- logout: Encerrar uma sessão no sistema
	#
	*/
	
class Acao{
	#nome do arquivo onde está implementada uma 
	# determinada ação do sistema.
	
	private $acao;
	
	public function __construct(){
		$this->acao = isset($_GET["acao"])? $_GET["acao"]: NULL;
		
	}
	
	public function nula(){
		return ($this->acao == NULL);
		
	}
	public function carregar(){
		$acao = "acoes/{$this->acao}.php";
		
		if(file_exists($acao)){
			include $acao;
		}else{
			?> <p>o aquivo <?php  echo $this->acao?> nao existe<p><?php				
				}
		}
	}

?>