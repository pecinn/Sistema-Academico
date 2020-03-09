<?php
	if (isset($_GET["id"])){
		$id = $_GET["id"];

		Mysql:: remover("pais", $id);
	}
		header("location: index.php?conteudo=paises");