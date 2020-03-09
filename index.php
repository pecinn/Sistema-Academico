<?php
	#incluir a classe layout
	include "classes/layout.php";
	#incluir a classe mysql
	include "classes/mysql.php";
	#incluir a classe sessao;
	include "classes/sessao.php";
	
	#inicializa  a sessao antes de verificar no banco de dados
	Sessao::inicializar();


	if(DB:: conectar()== false){
		#o die para a sessao aberta, se a conexao nao der certo;
		die("Erro ao conectar como Banco de dados");
	}

	#$tabela = "pais";
	#$campos = array("nome"=>"BRASIL", "gentilico"=>"BRASILEIRO PORRRA");
	#$id = 31;
	
	#MySQL:: alterar($tabela, $campos, $id); 
	#MySQL:: alterar("pais", array("nome"=>"BRASIL", "gentilico"=>"BRASILEIRO PORRRA"),31); 
	//Instanciando o Layout da página
	


	
	$layout = new Layout();
	
	
	#inserir links no cabecalho do layout
	
	
	#Gerar HTML da pagina
	$layout->gerar_HTML();
	
	DB:: desconectar();
	
	?>	
	
    