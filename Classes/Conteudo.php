<?php
//A classe conteudo gerencia os conteúdos que serão carregados na aplicação
class Conteudo{
    private $conteudo;
    
    //O construtor será usado para recuperar o nome do arquivo que está na barra de endereços!
  
    public function __construct(){
    
        if(isset($_GET["conteudo"])){
            $this->arquivo = $_GET["conteudo"];
        }else{
            $this->arquivo = "home";
            }
        }

    //função carregar que tem a função de carregar os conteúdos de acordo com as permissões definidas a cada tipo de usuário
    public function carregar(){

        $this->arquivos = "conteudos/$this->arquivo.php";
        if(file_exists($this->arquivos)){//O conteudo existe
            $sql = "SELECT * FROM conteudo WHERE conteudo.link = '{$this->arquivo}'";
            $conteudos = DB::consultar($sql);
        
            foreach ($conteudos as $c)
                if($this->arquivos == ($c["publica"] == 1) ){ // o conteúdo existe e é publico
                    include $this->arquivos;
                }
            	else{
                	if (Sessao::status() == false){//o conteudo existe. o conteudo não é publico e o usuário não esta logado
                            echo"<div class = 'alert alert-danger'><h1 style='font-size: 100%'> ERRO!!! 
                                    </h1><h4> É necessário estar logado para acessar esse conteúdo!!!</h4> </div>";
                        }
                    else{//o conteudo existe. a sessão está aberta, logo existe um usuário que está logado
                            $perfil_id = Sessao::perfil()["id"];

                            /* Este select traz os conteúdos que são permitidos ao usuário que está logado*/
                            $sql = "select * from permissao inner join conteudo on permissao.conteudo_id = conteudo.id
                            		where permissao.perfil_id = $perfil_id and conteudo.link = '{$this->arquivo}'"; 


                            $conteudos =DB::consultar($sql);
                            $cont = count($conteudos); //contamos quantos conteúdos o perfil logado pode acessar
                            
                            if ($cont == 0){ //se o usuário estiver logado e tentar forçar pela barra de endereços a entrada num conteúdo que não tem permissão
                                echo "<div class = 'alert alert-danger'><h1 style='font-size: 100%'> ERRO!!! 
                                    </h1> <br/> Você não term permissão para ver este arquivo $this->arquivos </div>";          
                            }
                            else {  
                                include $this->arquivos;  //se o número de conteúdos permitidos não for 0 mostra os conteúdos
                            }
                    
                        }
                    }
                 
            
            
        }else{ //O conteúdo requisitado não existe
            echo "<div class = 'alert alert-danger'><h1 style='font-size: 100%'> ERRO!!! 
                                    </h1> <br/> O arquivo $this->arquivos não existe!!! </div>";                
                }
        }
}

?>