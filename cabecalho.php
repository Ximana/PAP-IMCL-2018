<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link type="text/css" rel="stylesheet" href="_bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="css/estilo.css">
        <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
        <title>Home</title>
        
        <style>
            
            .borda-com-sombra{
                border: #666666 thin solid;
                box-shadow: #666666 0px 0px 15px 8px;

            }
            
            .icone
            {
                background-color: white;
                padding: 10px;
                margin-right: 10px;
                border-radius: 50%;
                                
                
            }
            
            .icone-social
            {
               
                
                border-radius: 50%;
                                
                
            }
            
            .fieldset-borda{
                border: #999999 thin solid;
            }
            legend{
                
            }
            
            .imagem-publicacao{
                box-shadow: black 0px 0px 10px 3px;
            }
            
            
            
        </style>


    </head>
    <body class="container-fluid">

        <header class="row">
            <!--menu -->

            <nav class="col-12 navbar navbar-expand-md  navbar-dark  fundo-azul ">

                <a  class="navbar-brand " href="index.php"  ><img class="img-fluid"  src="imagem/logo.png" alt="" id="logo" > </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-md-between" id="menu">

                    <ul class="navbar-nav">                        
                        <li class="nav-item"> <a class="nav-link text-white" href="perdidos.php" >Perdidos</a> </li>
                        <li class="nav-item"> <a class="nav-link text-white" href="achados.php" >Achados</a> </li>
                        <li class="nav-item"> <a class="nav-link text-white" href="publicar.php" >Publicar</a> </li>

                        <li class="nav-item dropdown"> 

                            <a class="nav-link dropdown-toggle text-white"  data-toggle="dropdown" id="navbardrop" href="#" >Mais</a> 
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="faleconnosco.php">Fale connosco</a>
                                <a class="dropdown-item" href="sobre.php">Sobre nós</a>
                            </div>

                        </li>


                        

                    </ul>
                    <form class="form-inline "  action="pesquisa.php" method="POST" enctype="multipart/form-data">
                        <input type="search" placeholder="Insira aqui a sua Pesquisa" class="form-control mr-md-1 " size="50" name="pesquisa" require=require" style="border-radius: 20px;">
                         <input type="submit" class="btn btn-outline-light d-md-none fa fa-search " name="btn_pesquisa" alt="a" style="height: 37px;">
                    </form> 

                </div>

            </nav>




            <!-- CARROUSEL  -->
<?php
            include_once './carrousel.php';

?>



        </header>