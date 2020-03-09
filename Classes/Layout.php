<?php
include"classes/cabecalho.php";
include"classes/rodape.php";
include"classes/conteudo.php";
include"classes/acao.php";
	class Layout{
		#variavel do tipo string
		private $title;
		
		#variavel do tipo Array
		private $estilos;
		
		#varivel do tipo array
		private $scripts;
		
		#variavel para instanciar o cabecalho
		private $cabecalho;
		
		#variavel para instanciar o conteudo
		private $conteudo;
		
		#variavel para instanciar o rodape
		private $rodape;
		
		private $acao;
		
		#construtor da classe
		public function __construct(String $title = "Sistema Academico"){
			$this->title = $title;
			$this->cabecalho = new Cabecalho();#instancia um objeto cabecalho dentro de layout#do tipo cabecalho, tendo acesso aos metodos#da classe cabecalho
			$this->conteudo = new Conteudo();
			$this->acao = new Acao();
			$this->rodape = new Rodape();
			
			$this->estilos = array();
			$this->scripts = array();
			
			$this->inserir_estilo("bootstrap.css");
			$this->inserir_script("jquery.js");
			$this->inserir_script("bootstrap.js");
			
			
		}
		
		
		public function inserir_estilo(String $estilo){
			$this->estilos[] = $estilo; 
		}
		
		public function inserir_script(String $script){
			$this->scripts[] = $script; 
		}
		
		public function inserir_link(String $url, String $rotulo){
			#o objeto instanciado cabecalho q ja possui acesso 
			#ao metodo inserir_link da classe cabecalho
			$this->cabecalho->inserir_link($url, $rotulo);
		}
		
		public function gerar_HTML(){

			
		?>
		<!doctype HTML>
		<html>
			<head>
				<title>	<?php echo "$this->title"?></title>
				<meta charset="utf-8">
				
				   <?php 
				  
                    foreach($this->estilos as $estilo){
                        echo "<link rel='stylesheet' type='text/css' href='css/$estilo'>";
                    }
                ?>
                
                
                <?php 
                    foreach($this->scripts as $script){
                        echo "<script src='js/$script'> </script>";
                    }   
                ?>
			</head>
			
			<body>
			 
			 <?php
                $this->cabecalho->gerar_HTML();
                ?>
				<div class="container">
					<section>
						<?php
						
						if ($this->acao->nula ()){
								$this->conteudo->carregar();
						
						}
						else{
							$this->acao->carregar();
						}
						
						?>
					</section>
				<footer>
				<?php
						$this->rodape->gerarHTML();
				?>
				</footer>
			</body>
				
		</html>
	<?php
		}
	}
	?>
		
		

