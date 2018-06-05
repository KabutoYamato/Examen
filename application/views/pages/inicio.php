
<div class="container h-100" style="">
    <div class="row h-100 justify-content-md-center align-items-center">
        <div class="col-sm-8 "
        <form>
            <div class="form-group">
                <label for="name">Nombre</label>
                <input type="text" class="form-control" id="name" placeholder="Ingrese su nombre">
            </div>
            <div class="form-group">
                <label for="correo">correo</label>
                <input type="email" class="form-control" id="correo" placeholder="Ingrese su correo">
            </div>
            <div class="form-group">
                <label for="edad">Edad</label>
                <select class="form-control" id="edad">
                    <?php for($i=15 ; $i<61 ; $i++){ ?>
                        <option><?php echo $i; ?></option>
                    <?php } ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>
</div>

  