<?php 
require_once("../conexao.php");
?>
<!DOCTYPE html>
<html>
<head>
  
	<title><?php echo $nome_sistema ?></title>
	<meta charset="utf-8" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

	<link rel="shortcut icon" type="image/x-icon" href="../img/icone.png">

	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script src="js/mascaras.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script> 
	<script src="js/ajax.js"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="default.css">
	<link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/> 
	<script type="text/javascript" src="DataTables/datatables.min.js"></script>
</head>

<body style="margin:0; font-family:Arial, sans-serif;">

<nav class="navbar navbar-expand-lg"
	style="
		background: linear-gradient(90deg, #4d3222ff, #4d3222ff);
		box-shadow:0 6px 15px rgba(1, 0, 0, 0.15);
		padding:12px 20px;
	">

  <div class="container-fluid">

    <a class="navbar-brand" href="index.php" style="font-weight:600; color:white;">
      <img src="../img/logo.png" width="70px">
    </a>

    <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <li class="nav-item">
          <a class="nav-link" href="index.php" style="color:white; font-weight:500;">Configurações</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="banner.php" style="color:white; font-weight:500;">Banner</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="sobre.php" style="color:white; font-weight:500;">Sobre</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="servicos.php" style="color:white; font-weight:500;">Serviços</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="trabalhos.php" style="color:white; font-weight:500;">Trabalhos</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="equipe.php" style="color:white; font-weight:500;">Equipe</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="logout.php" 
		  style="
			color:white; 
			font-weight:600;
			background:#4d3222ff);
			padding:6px 14px;
			border-radius:12px;
		  ">
			Sair
		  </a>
        </li>

      </ul>
     
    </div>
  </div>
</nav>

<div class="container" style="margin-top:30px;">