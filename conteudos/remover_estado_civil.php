<?php
if(isset($_GET["id"])){
	$id = $_GET["id"];
	DB::remover("estado_civil", $id);
}
header("location: index.php?conteudo=estado_civil");
?>