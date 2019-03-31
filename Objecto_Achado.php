<?php
   include_once './cabecalho.php';

$crud = new mysqli("localhost", "root", "", "pt");

if ($crud->connect_error) {

    printf("Erro %s", $crud->connect_error);
    exit();
}


?>



        <div class="row mt-5 mb-5 ">
<section class="col-12 container " style="">

        <div class="row">
            <h1 class="col-12 text-white fundo-azul mb-5 ">Categoria: Objectos de Valor Perdidos</h1>

        </div>

        <div class="row p-md-5 m-md-5  ">
            
            <?php
            
            
             // PERDIDOS RECENTEMENTE


$query = "SELECT artigo.descricao, artigo.imagem, ocorrencia.data "
        . "FROM categoria INNER JOIN ((artigo INNER JOIN ocorrencia ON "
        . "artigo.codigo = ocorrencia.`codigo do artigo`) "
        . "INNER JOIN artigocategoria ON artigo.codigo = artigocategoria.`codigo do artigo`) "
        . "ON categoria.codigo = artigocategoria.`codigo da categoria` "
        . "WHERE (((categoria.descricao)='Objecto de Valor') AND "
        . "((ocorrencia.classificacao)='achado') AND ((ocorrencia.entregue)='nao') "
        . "AND ((ocorrencia.publicado)='sim')) ORDER BY ocorrencia.codigo DESC";


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









    </section>

        </div>





       <?php
       include_once './rodape.php';
