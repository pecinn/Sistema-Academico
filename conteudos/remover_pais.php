<?php
if(isset($_GET["id"])){
	$id = $_GET["id"];
	DB::remover("pais", $id);
}
header("location: index.php?conteudo=paises");
?>