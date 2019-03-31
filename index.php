<?php
include_once './cabecalho.php';

$crud = new mysqli("localhost", "root", "", "pt");

if ($crud->connect_error) {

    printf("Erro %s", $crud->connect_error);
    exit();
}

//SELECIONAR O TOTAL DE ACHADOS

$query = "SELECT COUNT(*) AS total FROM `ocorrencia` WHERE classificacao = 'Achado'";

if ($resultado = $crud->query($query)) {
    $row = $resultado->fetch_assoc();
    $total_Achados = $row['total'];
}


//SELECIONAR O TOTAL DE PERDIDOS
$query = "SELECT COUNT(*) AS total FROM `ocorrencia` WHERE classificacao = 'Perdido'";

if ($resultado = $crud->query($query)) {
    $row = $resultado->fetch_assoc();
    $total_Perdido = $row['total'];
}



//SELECIONAR O TOTAL DE OCORRENCIA NO PARQUE DE DIVERSAO

$query = "SELECT COUNT(*) AS total FROM `ocorrencia` WHERE local = 'Parque'";

if ($resultado = $crud->query($query)) {
    $row = $resultado->fetch_assoc();
    $total_parque = $row['total'];
    //echo '<h1><strong>'.$total_parque.'<h1><strong>';
    
}
 
 //SELECIONAR O TOTAL DE OCORRENCIA NO SHOPPING

$query = "SELECT COUNT(*) AS total FROM `ocorrencia` WHERE local = 'Shopping'";

if ($resultado = $crud->query($query)) {
    $row = $resultado->fetch_assoc();
    $total_shopping = $row['total'];
    //echo '<h1><strong>'.$total_parque.'<h1><strong>';
    
}

//SELECIONAR O TOTAL DE OCORRENCIA NO ESTACIONAMENTO

$query = "SELECT COUNT(*) AS total FROM `ocorrencia` WHERE local = 'Estacionamento'";

if ($resultado = $crud->query($query)) {
    $row = $resultado->fetch_assoc();
    $total_estacionameto = $row['total'];
    //echo '<h1><strong>'.$total_parque.'<h1><strong>';
    
}


?>



<div class="row mt-5 mb-5">

    <section class="col-12 container ">
        <div class="row justify-content-center p-5">


            <aside class="col-12 col-md-3 m-md-5">

                <table class="table mb-4">      

                    <h2 class="fundo-amarelo text-center">Estatisticas</h2>
                    <tr class="fundo-amarelo">
                        <td>Perdidos</td><td>Achados</td>
                    </tr>

                    <tr class="fundo-amarelo">
                        <td><?= $total_Perdido ?> Artigos</td>  <td><?= $total_Achados ?> Artigos</td>

                    </tr>



                </table>


                <table class="table mb-4">

                    <h2 class="fundo-amarelo text-center">Locais</h2>
                    <tr class="fundo-amarelo">
                        <td>Parque de diverções</td>    <td><?= $total_parque ?> Artigos</td>
                    </tr>

                    <tr class="fundo-amarelo">
                        <td>Shopping</td>     <td><?= $total_shopping ?> Artigos</td>
                    </tr>
                    <tr class="fundo-amarelo">
                        <td>Estacionamento</td>          <td><?= $total_estacionameto ?> Artigos</td>
                    </tr>

                </table>

               











            </aside>



            <section class="col-12 col-md-7 container m-md-5   " style="//border-left: solid #666666 1px;">




                <div class="row">

                    <h1 class="col-12 text-white fundo-azul p-1">Perdidos recentemente</h1>

                    
                    
<?php
// PERDIDOS RECENTEMENTE


$query = "SELECT artigo.descricao, artigo.imagem, ocorrencia.data
FROM artigo INNER JOIN ocorrencia ON artigo.codigo = ocorrencia.`codigo do artigo`
WHERE (((ocorrencia.classificacao)='perdido') AND ((ocorrencia.entregue)='nao')
 AND ((ocorrencia.publicado)='sim'))
ORDER BY ocorrencia.codigo DESC LIMIT 6";

if ($resultado = $crud->query($query)) {
    
   // echo '<h1>'.$resultado->num_rows   .'</h1>';

    while ($row = $resultado->fetch_assoc()) {
        
        echo '
             <figure class="col-12 col-md-4 "  >
                        <img width="" height="" class="img-fluid" src="imagem/artigo/' . $row['imagem'] . '" style="height: 120px; border-radius: 30px;">
                        <figcaption class="">
                            <span>' .
        $row['descricao']
        . '</span><br>
                            <span>' .
        $row['data']
        . '</span>
                        </figcaption>
                    </figure>
                    ';

       
    }
}
?>
                    


















                    <span class="col-12 " href="#">

                        <a class=" btn text-white fundo-azul float-right" href="achados.php">Ver mais</a>
                    </span>

                </div>











                <div class="row mt-5">

                    <h1 class="col-12 text-white fundo-azul p-1">Achados recentemente</h1>
                    
                    
                    
                    <?php
// ACHADOS RECENTEMENTE


$query = "SELECT artigo.descricao, artigo.imagem, ocorrencia.data
FROM artigo INNER JOIN ocorrencia ON artigo.codigo = ocorrencia.`codigo do artigo`
WHERE (((ocorrencia.classificacao)='achado') AND ((ocorrencia.entregue)='nao')
 AND ((ocorrencia.publicado)='sim'))
ORDER BY ocorrencia.codigo DESC LIMIT 6";

if ($resultado = $crud->query($query)) {
    
   // echo '<h1>'.$resultado->num_rows   .'</h1>';

    while ($row = $resultado->fetch_assoc()) {
        
        echo '
             <figure class="col-12 col-md-4 "  >
                        <img width="" height="" class="img-fluid" src="imagem/artigo/' . $row['imagem'] . '" style="height: 120px; border-radius: 30px;">
                        <figcaption class="">
                            <span>' .
        $row['descricao']
        . '</span><br>
                            <span>' .
        $row['data']
        . '</span>
                        </figcaption>
                    </figure>
                    ';

       
    }
}
?>
                    
                    
                    
                    
                    
                    



                    <span class="col-12 " href="#">

                        <a class=" btn text-white fundo-azul float-right" href="perdidos.php">Ver mais</a>
                    </span>

                </div>












            </section>



        </div>
    </section>


</div>





<?php
include_once './rodape.php';
