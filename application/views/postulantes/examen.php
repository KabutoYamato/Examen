<div class="container-fluid" style="margin-top: 50px; margin-bottom:30px; padding-left:12vw; padding-right:12vw;">
    <div class="row justify-content-center">
        <?php for($i=1;$i<49;$i++){
            if(!$_SESSION['pregunta'.$i]['contestada']){?>
                <a href="<?php echo $i;?>">
                    <div class="d-flex border border-secondary bg-light align-items-center justify-content-center text-primary" style="width: 3vw; height: 3vw; margin: 1px">
                        <?php echo $i;?>
                    </div>
                </a>
            <?php }
            else{ ?>
              <a href="<?php echo $i;?>">
                    <div class="d-flex bg-success align-items-center justify-content-center text-light" style="width: 3vw; height: 3vw; margin: 1px">
                        <?php echo $i;?>
                    </div>
                </a>
        <?php }}?>          
    </div>
    <br></br>
    <div class="row justify-content-center text-center">
        <div class="col-12 justify-content-center">
            <h3>Pregunta <?php echo $pregunta['id']?><h3>
        </div>
        <br></br>
        <div class="col-12 justify-content-center">
            <img src = "<?= base_url('assets/img/'.$pregunta['imagen']);?>" alt="<?php echo $pregunta['descripcion'];?>"style="width:30vw; height:30vw;"></img>
            <br></br>
        </div>
        
        <div class="col-12">
            <?php echo $pregunta['id'] < 48 ?  form_open('postulantes/examen/'.($pregunta['id']+1)) : form_open('postulantes/terminar'); ?>
                <input type="hidden" name="id" value="<?php echo $pregunta['id'];?>">
                <div>
                    <input class="text-center border border-secondary rounded-top" type="text" autocomplete="off" style="width: 5vw; height:5vw; font-size:3vw;" maxlength="1" name="res1" value="<?php if($_SESSION['pregunta'.$pregunta['id']]['contestada']){echo $_SESSION['pregunta'.$pregunta['id']]['respuestas']['respuesta_1'];}  ?>">
                </div>
                <div>
                    <input class=" text-center border border-secondary rounded-bottom" type="text" autocomplete="off" style="width: 5vw; height:5vw; font-size:3vw;" maxlength="1" name="res2" value="<?php if($_SESSION['pregunta'.$pregunta['id']]['contestada']){echo $_SESSION['pregunta'.$pregunta['id']]['respuestas']['respuesta_2'];}  ?>">
                </div>
                <br>
                <div class="w-100 text-center">
                    <?php if($pregunta['id'] < 48){?>
                        <button type="submit" name="submit" class="btn btn-primary">Siguiente pregunta</button>
                    <?php }
                    else{?>
                        <button type="submit" name="submit" class="btn btn-primary">Terminar examen</button>
                    <?php }?>
                </div>
            </form>
        </div>
    </div>
</div>