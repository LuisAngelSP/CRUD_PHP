<div id="modalmantenimiento" class="modal fade bd-example-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">

            <form action="" method="POST" id="producto_form">

                    <div class="modal-header">
                        <h5 class="modal-title" id="mdltitulo"></h5>
                    </div>
                    <div class="modal-body">

                            <input type="hidden" class="form-control" id="prod_id" name="prod_id"/>

                        <div class="form-group">
                            <label for="cat_id" class="form-label">Categoria</label>
                            <select type="text" class="form-control select2" id="cat_id" name="cat_id" data-placeholder="Seleccione" style="width: 100%;" >  
                                        
                            </select>


                       
                            <label for="prod_nom" class="form-label">Nombre</label>
                            <input type="text" class="form-control " id="prod_nom" name="prod_nom" placeholder="Ingresar Producto" required>                         
               


                            <label for="prod_desc" class="form-label">Descripción</label>
                           <textarea class="form-control" name="prod_desc" id="prod_desc" cols="20" rows="5" required></textarea>


                           <label for="prod_cantidad" class="form-label">Cantidad</label>
                            <input type="number" class="form-control " id="prod_cantidad" name="prod_cantidad" placeholder="Ingresar Cantidad" required>                         
               


                    </div>

                    <div class="modal-footer">
                            <button type="button" class="btn btn-rounded btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" name="action" id="#" value="add" class="btn btn-rounded  btn-primary">Guardar</button>
                    </div>

            </form>
        </div>
    </div>

</div>