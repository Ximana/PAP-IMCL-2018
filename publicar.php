<?php
include_once './cabecalho.php';
?>



<div class="row mt-5 mb-5 p-0">



    <section class="col-12 container " style="">

        <div class="row ">
            <h1 class="col-12 text-white fundo-azul mb-5 ">Publicar Aqui</h1>

        </div>

        <div class="row justify-content-center">
            <form class="col-12 col-lg-8  container borda-com-sombra" method="POST" action="include/processa.php" enctype="multipart/form-data" style="border: ">

                <div class="row m-md-5">

                    <fieldset class="col-12 p-4 fieldset-borda" ><legend class="d-flex" >Dados do usuario</legend>

                        <label>Nome completo</label>
                        <input class="form-control" type="text" size="" name="nome" required="required" >

                        <label>Telefone</label>
                        <input class="form-control" type="tel" size="" name="numero" required="required">

                        <label>Email</label>
                        <input class="form-control" type="email" size="" name="email">

                        <fieldset class=" fieldset-borda pr-4 pl-4">
                            <legend>Sexo</legend>

                            <input class="" type="radio" name="sexoMasc" value="Masculino" id="masc"><label for="masc"> Masculino</label><br>
                            <input class="" type="radio" name="sexoFem" value="Femenino" id="fem"><label for="fem"> Femenino</label>
                        </fieldset>





                    </fieldset>





<!--

                    <figure class="col-12 col-lg-4 p-3">
                        <img  class="img-fluid img-thumbnail imagem-publicacao" src="imagem/derevya-pejzazh-33468.jpg">
                        <input
                        <input class="mt-3" type="file" name="imagem">
                    </figure>

                    -->
                    
                    
                    
                    

                </div>


                <div class="row m-md-5">

                    <fieldset class="col-12 mt-5 p-4 fieldset-borda"> <legend>Dados do artigo</legend>
                        

                        <label class="mr-5">Onde perdeu</label>

                        <select class="form-control" name="local-perda">
                        <option value="">--Selecione o Local--</option>
                            <option value="Parque">Parque de diverções</option>
                            <option value="Shopping">Shopping</option>
                            <option value="Estacionamento">Estacionamento</soption>
                            <option value="Nao sei">Não sei</option>

                        </select>
                        <br>


                        <label class="mr-5">Quando perdeu</label>
                        <input class="form-control" type="date" name="data-perda" >
                        <br>


                        <label class="mr-5">Classificação</label>
                        
                        <select class="form-control" name="classificacao" required="required">
                        <option value="">--Selecione a Classificação--</option>
                            <option value="Achado">Achado</option>
                            <option value="Perdido">Perdido</option>
                            

                        </select>
                        
                        <br>
                         <label class="">Categoria</label>
                        <select class="form-control" name="categoria">
                        <option value="">--Selecione a Categoria--</option>
                            <option value="1">Documento</option>                            
                            <option value="2">Pacote fechado</option>
                            <option value="3">Livro</option>
                            <option value="4">Objecto de valor</option>
                            <option value="5">Electronico</option>
                            <option value="6">Outro</option>
                            

                        </select>

                        
                        <br>
                        <label>Descrição do artigo</label>
                        <input type="text" class="form-control" name="descricao" placeholder="Descreva o seu artigo" required="required">
                        
                        <input class="btn btn-dark mt-2" type="file" name="imagem">

                    </fieldset>

                     





                    <span class="col-12  mt-5 mb-5">
                        <button type="submit" name="publicar" class=" float-right d-inline  btn fundo-azul text-white">
                            Confirmar Publicação
                        </button>
                    </span>                        
                </div>

            </form>



        </div>









    </section>


</div>





<?php
include_once './rodape.php';
