<div id="modalmantenimiento" class="modal fade bd-example-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <form action="" method="POST" id="producto_form">

                    <div class="modal-header">
                        <h5 class="modal-title" id="mdltitulo"></h5>
                    </div>
                    <div class="modal-body">
                            <label for="prod_nom" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="prod_nom" name="prod_nom" placeholder="Ingresar Producto" require>
                    </div>

                    <div class="modal-footer">
                            <button type="button" class="btn btn-rounded btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" name="action" id="#" value="add" class="btn btn-rounded  btn-primary">Guardar</button>
                    </div>

            </form>
        </div>
    </div>

</div>