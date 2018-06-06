

<div class="container h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="col-sm-8 border rounded" style="padding: 50px;">
        <h2 class="w-100 text-center">Bienvenido</h2>
        <div class="alert alert-danger" <?php if(!validation_errors() == ""){echo 'hidden';}?> role="alert" hidden>
            <?php echo validation_errors();?>
        </div>
        
        <?php echo form_open('postulantes/inicio');?>
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="input" name="nombre" class="form-control" placeholder="Ingrese su nombre">
            </div>
            <div class="form-group">
                <label for="correo">Correo</label>
                <input type="email" class="form-control" name="correo" placeholder="Ingrese su correo">
            </div>
            <div class="form-group">
                <label for="telefono">Telefono</label>
                <input type="text" class="form-control" name="telefono" placeholder="Ingrese su telefono">
            </div>
            <div class="form-group">
                <label for="edad">Edad</label>
                <select class="form-control" name="edad">
                    <?php for($i=15 ; $i<61 ; $i++){ ?>
                        <option value="<?php echo $i;?>"><?php echo $i; ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="w-100 text-center">
                <button type="submit" name="submit" class="btn btn-primary">Enviar</button>
            </div>
        </form>
    </div>
</div>

  