<?php
	/**
	*A classe Data Base é a super classe que modela 
		o acesso ao banco de dados, qualquer que 
		seja o SGBD(MyQql, Postgres, etc)
	Atributos:
		#link: Representa a conexao com o banco de dados,
		ele so é gerado quando executado com sucesso.
	
	Metodos:
		+Conectar: (host, usuario, senha, banco, porta: String): boolean
			este metodo ABSTRATO tenta fazer a conexao com o servidor do banco de dados
			caso a conexao seja estabelecida, um link é gerado e o metodo retorna TRUE,
			caso contrario, o metodo retorna false.
		
		+Consultar(select: String): void
			metodo ABSTRATO que executa uma consulta do tipo SELECT 
				no banco de dados;
		+Inserir(tabela: String, Campos: array)void
			Método ABSTRATO que executa uma consulta do tipo INSERT em uma tabela
				do banco de dados, os valores a serem inseridos sao passados pelo
				parametro campos.
		+Alterar(tabela: String, campos: array, id: Int): void
			Método ABSTRATO que executa uma consulta do tipo UPDATE
			em uma tabela do banco de dados, Os valores a serem 
			alterados sao passados pelo parametro campos, o
			registro a ser alterado é indicado pelo parametro id.
			
		+Remover(tabela:String, id: Int)void
			Método ABSTRATO que executa uma consulta  do tipo  DELETE
			no banco de dados , indicando a tabela e o id do registro
			a ser removido.
			
*/
abstract class Database{
	#nao se passa atributo para metodo na propria classe, ela ja tem acesso ao atributo;
	protected static $link;
		
		public abstract static function conectar(String $host, String $usuario,String $senha,
			String $banco, String $porta);
		
		public abstract static function consultar(String $select);
		
		public abstract static function inserir(String $tabela, array $campos);
		
		public abstract static function alterar(String $tabela, array $campos, int $id);
		
		public abstract static function remover(String $tabela, int $id);
		
		public abstract static function desconectar();
	
	}