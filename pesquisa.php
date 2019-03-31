<?php
$crud = new mysqli("localhost", "root", "", "pt");

if ($crud->connect_error) {

    printf("Erro %s", $crud->connect_error);
    exit();
}


if (isset($_POST['btn_pesquisa'])) {

    $pesquisa = $crud->escape_string($_POST['pesquisa']);
    // echo '<h1>'.$pesquisa.'</h1>';
}

include_once './cabecalho.php';
?>



<div class="row mt-5 mb-5 p-0">



    <section class="col-12 container " style="">

        <div class="row ">
            <h1 class="col-12 text-white fundo-azul mb-5 ">Pesquisando por "<?= $pesquisa; ?>"</h1>

        </div>

        <div class="row justify-content-center">
            <main class="col-12 col-lg-10  " style="">

                
                
                
                
                <div id="acordion" class="">

                    <div class="card container">

                        <!-- PERDIDOS -->
                        <div class="card-header row">

                            <a href="#perdido" class="card-link col-12 text-dark font-weight-bold" data-toggle="collapse" data-parent="#acordion">
                                Perdidos
                            </a>
                        </div>
                            <div id="perdido" class="collapse show row">


<?php
$query = "SELECT artigo.descricao, artigo.imagem, ocorrencia.data 
    FROM artigo 
    INNER JOIN ocorrencia ON artigo.codigo = ocorrencia.`codigo do artigo` 
    WHERE (((ocorrencia.classificacao)='perdido') AND ((ocorrencia.entregue)='nao')) 
    AND ((artigo.descricao) LIKE '%$pesquisa%') ORDER BY ocorrencia.codigo DESC ";

if ($resultado = $crud->query($query)) {

    // echo '<h1>'.$resultado->num_rows   .'</h1>';

    while ($row = $resultado->fetch_assoc()) {

        echo '
             <figure class="col-12 col-md-4 col-lg-3 "  >
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




                           

                        </div>

                        
                        
                        
                        
                        
                        
                        <!-- ACHADO -->
                        <div class="card-header row">

                            <a href="#achado" class="card-link col-12 text-dark font-weight-bold" data-toggle="collapse" data-parent="#acordion">
                                Achados
                            </a>
                        </div>
                            <div id="achado" class="collapse show row">


<?php
$query = "SELECT artigo.descricao, artigo.imagem, ocorrencia.data 
    FROM artigo 
    INNER JOIN ocorrencia ON artigo.codigo = ocorrencia.`codigo do artigo` 
    WHERE (((ocorrencia.classificacao)='achado') AND ((ocorrencia.entregue)='nao')) 
    AND ((artigo.descricao) LIKE '%$pesquisa%') ORDER BY ocorrencia.codigo DESC ";

if ($resultado = $crud->query($query)) {

    // echo '<h1>'.$resultado->num_rows   .'</h1>';

    while ($row = $resultado->fetch_assoc()) {

        echo '
             <figure class="col-12 col-md-4 col-lg-3 "  >
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




                           

                        </div>

                        
                        
                        
                        
                        
                    </div>

                </div>















                
                
                
                
                
                
                
                








            </main>


        </div>









    </section>


</div>





<?php
include_once './rodape.php';

