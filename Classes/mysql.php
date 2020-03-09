<?php
	/**
		Classe MySql é uma subclasse de DataBase
		Devemos implementar os metodos abstratos definidos em Database(polimorfismo)
		
	*/
#incluindo o codigo da SuperClasse DataBase	
include "classes/database.php";
	#declarando a classe MySql como uma EXTENSÃO de Database
	class MySQL extends Database{
		
		#metodo que conecta em um servidor de banco de dados MyQql
		public static function conectar(String $host="localhost", String $usuario="root",String $senha="",
			String $banco="sistema_academico", String $porta="3306"){
			
			#conexao com servidor mySQl, objeto que faz a conexao como banco de dados, através do link usando
			#"self::link" que é o objeto que representa conexao,(self:usado para referenciar a propria classe nao o objeto, como o $this faz);
			self::$link = new mysqli($host, $usuario,$senha, $banco,$porta);
			
			if(self::$link->connect_error){
				return false;
			}
			#chasrset utf8
			self::$link->set_charset("utf8");
			return true;
				
		}#executa uma consulta SQL
		public static function consultar(String $select){
			#verifica se  a consulta trouxe resultados
			$result = self:: $link->query($select);
			if($result == false){
				return array();
			}
			$array = array();
			
			#para cada registro gerado pela consulta
			while ( $registro = $result -> fetch_assoc ()) { 
				#armazena os registro dentro do array
				$array[] = $registro;
			}
			return $array;
		}
		#metodo que insere valores do array campos na tabela indicada	
		
		public static function inserir(String $tabela, array $campos){
			$string_campo = "";
			$string_valores = "";
			
			foreach($campos as $nome_camp => $valor_camp){
				if($string_campo == ""){
					$string_campo = "$nome_camp";
				}
				else{
					$string_campo = "$string_campo, $nome_camp";					
				}
			
				if($string_valores == ""){
					$string_valores = "'$valor_camp'";
				}
				else{
					$string_valores = "$string_valores, '$valor_camp'";					
				}
			}
			
			$inserir = "INSERT INTO $tabela($string_campo) values ($string_valores)";
			echo $inserir;
			self::$link->query($inserir);
		}
		#metodo que altera os campos da tabela para registro indicado
		public static function alterar(String $tabela, array $campos, int $id){
			$string = "";
			foreach($campos as $nome_camp => $valor_camp){
				
				if($string == ""){
					# primeiro campo 
					$string = "$nome_camp = '$valor_camp'";
				}
				else{
				$string = "$string, $nome_camp = '$valor_camp'";
					
				}
			}
			
			$alterar = "UPDATE $tabela SET $string WHERE id = $id";
			echo $alterar;
			self::$link->query($alterar);
			
			}
		#metodo q remove os campos da tabela preenchido
		public static function remover(String $tabela, int $id){
			$delete = "DELETE FROM $tabela WHERE id = $id";
			self::$link->query($delete);
			
		}
		#metodo q desconecta a sessao aberta do banco
		public static function desconectar(){
			self::$link->close();
			
		}
	
		
			
	}
class DB extends MySQL{}

?>