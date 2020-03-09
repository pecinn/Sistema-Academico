<?php
/*
	Classe Rodapé deverá conter o nome do autor, email, versão e o copyright
	Os atributos deverão ser privados
	O método construtor coloquei um valor padrão para os meus atributos, assim quando estanciado, os parametros serão opcionais.
*/
class Rodape{
	private $autor; // Atributo autor
	private $email; // Atributo email
	private $versao; // Atributo versão
	private $copyright; // Atributo copyright

	/*
		Metodo construtor onde assumo que autor, email, versao e copyright são do tipo String
		Os 4 atributos já possuem um valor padrão, assim não sendo obrigatório o parametro no momento da instância

	*/
	public function __construct(String $autor = "João Felipe", String $email = "jfelipe7.souza@gmail.com", String $versao = "2018/1", String $copyright = "IFMS Campus Corumbá"){
		$this->autor = $autor;
		$this->email = $email;
		$this->versao = $versao;
		$this->copyright = $copyright;
	}

	/*
		Metodo gerarHTML, método esse que ficará com o trabalho de imprimir na tela, de uma maneira ja formatada os atributos que compooem um rodapé

	*/
	public function gerarHTML(){
		?>
		<hr>
			<h5><?php echo $this->copyright ?></h5>
			<h5>
				<?php
			         echo "Autor: <a href='$this->email'>
				$this->autor
    			</a>"
    			?>
  			</h5>
  			<h5><?php echo $this->versao ?></h5>
  		<?php
	}
}

?>