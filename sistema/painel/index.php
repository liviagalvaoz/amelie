<?php 
@session_start();
require_once('../conexao.php');
if(@$_SESSION['nome'] == ""){	
	echo '<script>window.location="../index.php"</script>';
	exit();

}
 require_once("cabecalho.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="color/default.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurações</title>

    <style>
        body {
            background: linear-gradient(135deg, #4d3222ff, #4d3222ff, #4d3222ff);
            min-height: 100vh;
            font-family: Arial, sans-serif;
        }

        #form-config {
            background: rgba(255, 245, 231, 0.95);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 10px 25px #4d3222ff;
            margin-top: 20px;
        }

        label {
            font-weight: bold;
            color: #4d3222ff;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #4d3222ff;
        }

        .form-control:focus {
            border-color: #4d3222ff;
            box-shadow: 0 0 5px #4d3222ff;
        }
    </style>

</head>
<body>
    <form id="form-config">
<div class="row">
	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome Site</label>
			<input name="nome" type="text" class="form-control" placeholder="Nome do Site" value="<?php echo $nome_sistema ?>" required>
		</div>
	</div>

	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Email Site</label>
			<input name="email" type="email" class="form-control" placeholder="Email do Site" value="<?php echo $email_sistema ?>" required>
		</div>
	</div>

	<div class="col-md-2 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Senha Site</label>
			<input name="senha" type="password" class="form-control" placeholder="Senha do Site" value="<?php echo $senha_sistema ?>" required>
		</div>
	</div>

	<div class="col-md-2 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Telefone Site</label>
			<input name="telefone" id="telefone" type="text" class="form-control" placeholder="Telefone do Site" value="<?php echo $telefone_sistema ?>">
		</div>
	</div>


</div>


<div class="row">
	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Endereço</label>
			<input name="endereco" type="text" class="form-control" placeholder="Endereço se Houver" value="<?php echo $endereco_sistema ?>">
		</div>
	</div>


	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Instagram</label>
			<input name="instagram" type="text" class="form-control" placeholder="Instagram" value="<?php echo $instagram_sistema ?>" required>
		</div>
	</div>

	<div class="col-md-4 col-8">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Twitter</label>
			<input name="twitter" type="password" class="form-control" placeholder="Twitter" value="<?php echo $twitter_sistema ?>" required>
		</div>
	</div>

	<div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Facebook</label>
			<input name="facebook" id="telefone" type="text" class="form-control" placeholder="Facebook" value="<?php echo $facebook_sistema ?>">
		</div>
	</div>

    <div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Linkedin</label>
			<input name="linkedin" type="text" class="form-control" placeholder="linkedin" value="<?php echo $linkedin_sistema ?>">
		</div>
	</div>

    <div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Youtube</label>
			<input name="youtube" type="text" class="form-control" placeholder="youtube" value="<?php echo $youtube_sistema ?>">
		</div>
	</div>

    <div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Cor Templente Hexadecimal</label>
			<input name="cor" type="text" class="form-control" placeholder="cor do templente" value="<?php echo $cor_sistema ?>">
		</div>
	</div>

</div>
<div class= "row">
    <div class= "col-md-12">
        <div class= "mb-3">
            <label for="exampleFormControlInput1" class="form-label">Texto Rodapé Site</label>
			<input name="texto_rodape" type="text" class="form-control" placeholder="rodapé" value="<?php echo $texto_rodape ?>">
        </div>

    </div>

</div>

<div class= "row">
    <div class= "col-md-5">
        <div class= "mb-3">
            <label for="exampleFormControlInput1" class="form-label">Titulo Contato</label>
			<input name="titulo_contato" type="text" class="form-control" placeholder="entre em contato" value="<?php echo $titulo_contato ?>">
        </div>

    </div>

    <div class="col-md-7">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Subtitulo contato</label>
			<input name="subtitulo_contato" type="text" class="form-control" placeholder='' value="<?php echo $subtitulo_contato ?>">
		</div>
	</div>

</div>
	
<div class="row">
	
	<div class="col-md-4 col-8">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Logo (*png)</label>
			<input id="logo" name="logo" type="file" class="form-control" onchange="alterarImg('target-logo', 'logo')">			
		</div>
	</div>
	<div class="col-md-2 col-4">
		<div><img id="target-logo" src="../img/logo.png" width="110px" style="margin-top: 15px"></div>
	</div>

	<div class="col-md-4 col-8">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Ícone (*png)</label>
			<input id="icone" name="icone" type="file" class="form-control" onchange="alterarImg('target-icone', 'icone')">			
		</div>
	</div>
	<div class="col-md-2 col-4">
		<div><img id="target-icone" src="../img/icone.png" width="50px" style="margin-top: 25px"></div>
	</div>
    
<div class="row">
	<div class="col-md-12 text-center" style="margin-top:60px;">
		<button type="submit"
		style="
			background: linear-gradient(#4d3222ff);
			color:white;
			border:none;
			padding:24px 60px;
			border-radius:24px;
			font-size:16px;
			font-weight:600;
			box-shadow:0 8px 18px #00000040;
			transition:0.3s;
			cursor:pointer;
		"
		onmouseover="this.style.transform='scale(1.05)'"
		onmouseout="this.style.transform='scale(1)'">
			Salvar Configurações
		</button>
	</div>
</div>

</form>

<br><br>
</div>





<script type="text/javascript">

$("#form-config").submit(function () {
	$('#mensagem').text('...Carregando!')

    event.preventDefault();
    var formData = new FormData(this);

    $.ajax({
        url: "scripts/salvar-config.php",
        type: 'POST',
        data: formData,

        success: function (mensagem) {
            $('#mensagem').text('');
            $('#mensagem').removeClass()
            if (mensagem.trim() == "Salvo com Sucesso") {                        
            	location.reload();
            	$('#mensagem').addClass('text-success')
            	$('#mensagem').text(mensagem)
            } else {
                $('#mensagem').addClass('text-danger')
                $('#mensagem').text(mensagem)
            }


        },

        cache: false,
        contentType: false,
        processData: false,

    });

});


</script>

    
</body>
</html>