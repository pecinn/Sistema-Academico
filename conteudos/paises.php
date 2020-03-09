<div class = "form-group">
<h1>Paises Cadastrados</h1>
<a href = "index.php?conteudo=form_cad_pais" class="btn btn-primary"><span class = "glyphicon glyphicon-pencil"></span>Cadastrar País</a>
	<table class = 'table'>	
	<tr>
		<th> ID</th>
		<th> Nome</th>
		<th>Sigla</th>
		<th>Gentilico</th>
	</tr>
<?php
	$paises = DB:: consultar("select * from pais");
		foreach($paises as $p){
			echo"<tr>";
			echo"<td>{$p['id']}</td>";
			echo"<td>{$p['nome']}</td>";
			echo"<td>{$p['sigla']}</td>";
			echo"<td>{$p['gentilico']}</td>";
			echo"<td><a href = '#' class='btn btn-primary'> <span class = 'glyphicon glyphicon-trash' data-toggle='modal' data-target='#modal_{$p["id"]}'></span> </a></td>";
			echo"<div id=modal_{$p["id"]} class='modal fade' role='dialog'>";
				 echo"<div class='modal-dialog'>";
					echo"<div class='modal-content'>";
					  echo"<div class='modal-header'>";
						echo"<button type='button' class='close' data-dismiss='modal'>&times;</button>";
						echo"<h4 class='modal-title'>Exclusão do País</h4>";
					  echo"</div>";
					  echo"<div class='modal-body'>";
						echo"<p>Confirmar a exclusao do país {$p["nome"]} e ID {$p["id"]} </p>";
					  echo"</div>";
					  echo"<div class='modal-footer'>";
						echo"<a href='index.php?conteudo=remover_pais&id={$p["id"]}'  class='btn btn-success'>Sim</a> ";
						echo"<button type='button' class='btn btn-danger' data-dismiss='modal'>Não</button>";
					  echo"</div>";
					echo"</div>";
				  echo"</div>";
			echo"</div>";
			echo"<td><a href = 'index.php?conteudo=form_alter_pais&id={$p['id']}' class='btn btn-primary'><span class = 'glyphicon glyphicon-edit'></span></a></td>";
			echo"</tr>";
		
		}
		
	echo"</table>";
?>
</div>