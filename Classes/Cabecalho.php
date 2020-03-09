<?php
/* Aclasse cabeçalho representa um cabeçalho de aplicação php
	composto po um titulo e um menu, que e conjunti de hiperlinks
	
	Ao instanciar um cabeçalho, o desenvolvedor deve informar 
	 o seu titulo . o menu "nasce" como um array  vazio
	 
	Esta classe possui um metodo para inserir links no  menu além 
	 de outro metodo que gera o HTML completo do cabeçãlho 
	  
*/
class Cabecalho{
	private $titulo;
	
	private $menu;
	#o cabeçalhotem um titulo passado por parametro 
	#e o menu nasce como um array vazio
	public function __construct(String $titulo=""){
				//construtor da classe Cabeçalho
		$this->titulo = $titulo;
		$this->menu = array();

		#realiza a consulta no banco para retornar os conteudos publicos
		$sql = "SELECT * FROM conteudo WHERE conteudo.publica = 1 AND conteudo.menu = 1";
		#$conteudos recebe a consulta

		$conteudos = DB::consultar($sql);

		#percorre a linhas no banco de dados, e chama o metodo pra inserir link
		# atraves do link e rotulo
			foreach ($conteudos as $c) {
				$this->inserir_link($c["link"], $c["rotulo"]);
			}

			if(Sessao::status() == TRUE){
				$perfil_id = Sessao::perfil()["id"];
					
				$sql = "SELECT * FROM permissao INNER JOIN conteudo ON permissao.conteudo_id = conteudo.id
						WHERE permissao.perfil_id = $perfil_id and conteudo.menu = 1";
			
				#$conteudos recebe a consulta
				$conteudos = DB::consultar($sql);

				#percorre a linhas no banco de dados, e chama o metodo pra inserir link
				# atraves do link e rotulo
				foreach ($conteudos as $c) {
					$this->inserir_link($c["link"], $c["rotulo"]);
					}
				}
			}
	public function inserir_link(String $url, String $rotulo){
		$this->menu[$url] = $rotulo;

	}
	public function gerar_HTML(String $tipo = "inverse"){
?>	

	<nav class="navbar navbar-<?php echo $tipo?>">
	<div class="container">				
		<div class="navbar-header">
			<a class="navbar-brand" href="index.php"> 
			<span class="glyphicon glyphicon-home"></span> <?php echo $this->titulo?></a>
		</div>	
		<ul class="nav navbar-nav">
			<?php foreach($this->menu as $url => $rotulo): ?>
			
			<li><a href="<?php echo "index.php?conteudo=$url"?>"> <?php echo $rotulo?></a></li>
			
			<?php endforeach ?>
		</ul>
		<ul class="nav navbar-nav navbar-right">
            <li>
				<?php if(Sessao::status() == FALSE): ?>
				<a href="index.php?acao=login"> <span class="glyphicon glyphicon-user"></span>
				Login
				</a>
			</li>	
				<?php else: ?>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					<span class="glyphicon glyphicon-user"></span>	
					<?php echo Sessao::usuario()["nome"]?>
					<?php echo Sessao::perfil()["descricao"]?>
					<span class="caret"></span>
				</a>	
				 <ul class="dropdown-menu" >
					<li><a href="index.php?acao=alterar_dados">Alterar Dados</a></li>
					<li><a href="index.php?acao=alterar_senha">Alterar Senha</a></li>
					<li><a href="index.php?acao=logout">Logout</a></li>
				 </ul>
			</li>	
				<?php endif?>
			
        </ul>
			<form class="navbar-form navbar-right"><input type="text" 
			class="form-control" placeholder="Buscar...">
			</form>
			
		</div>
	</nav>
<?php
	}
}
