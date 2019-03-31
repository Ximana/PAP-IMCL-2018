<?php
    include_once './cabecalho.php';


?>



        <div class="row mt-5 mb-5 p-0">



            <section class="col-12 container " style="border-left: solid #666666 1px;">

                <div class="row ">
                <h1 class="col-12 text-white fundo-azul ">Fale Connosco</h1>
                
                </div>

                <div class="row justify-content-center">
                    <form class="col-12 col-lg-8 p-md-5 m-md-5 borda-com-sombra" method="POST" action="include/faleConoosco.php">
                    
                   
                    
                    
                    
                    <label>Nome completo</label>
                    <input class="form-control" type="text" size="" name="nome" required="required">
                    
                    <label>Telefone</label>
                    <input class="form-control" type="tel" size="" name="telefone" required="required">
                    
                    <label>Email</label>
                    <input class="form-control" type="email" size="" name="email" required="required">
                    
                    <label>Deixe aqui a sua mensagem</label>
                    <textarea class="form-control" rows="9" name="mensagem">
                        
                    </textarea>
                    
                    
                    
                    
                    
                    
                    
                    
                    

                    
                    
                    <span class="col-12">
                        <button name="enviar" type="submit" data-toggle="modal"  data-target="#meumodal" class=" float-right d-inline  btn fundo-azul text-white mt-5">Enviar</button>
                        
                        <!--   MODAL   -->
                    </span>


                </form>
                

                
            </div>









            </section>


        </div>





       <?php
       include_once './rodape.php';
