<div class="container-fluid" style="margin-top: 50px; margin-bottom:50px; padding-left:12vw; padding-right:12vw;">
    <div class="row justify-content-center">
        <?php for($i=1;$i<49;$i++){?>
        <a href="#<?php echo $i;?>">
            <div class="d-flex align-items-center justify-content-center text-light" style="width: 3vw; height: 3vw; background-color: #729671; margin: 1px">
                <?php echo $i;?>
            </div>
        </a>
        <?php }?>
    </div>
    <br></br>
    <div class="row justify-content-center">
        <img alt="Pregunta <?php echo "x";?>"style="width:30vw; height:30vw;"></img>
        <?php var_dump($_SESSION);?>
    </div>
</div>