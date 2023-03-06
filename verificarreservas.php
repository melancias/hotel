<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="imagex/png" href="miniicon.png">
    <title> Confirmação </title>
    <link rel="stylesheet" href="form.css" type="text/css">
</head>
<body>
<button> <a href="principal.html"> Voltar </a></button>
<br>
<br>

    
</body>
</html>

<?php 
$nome = $_POST['nome'];
$senha = $_POST['senha'];


  if( !empty($senha) ) {
    if($senha != 'ABC555')
    echo 'Essa senha está incorreta. Tente outra ou faça uma reserva!';

    else if($senha === 'ABC555')
    echo 'Sua reserva já foi confirmada, ', $nome , ', esperamos que tenha ótimos sonhos aqui ;)';
    echo '<br> <br>';
    echo  'Saudações, hotel Erebus.';

      };




?>