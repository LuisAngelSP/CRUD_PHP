<?php 

    class Producto extends Conectar{

        public function get_producto(){
            $conectar= parent::conexion();
            parent::set_name();
            $sql="SELECT * FROM tm_producto";
            $sql=$conectar->prepare($sql);
            $sql->execute();

            return $resultado=$sql->fetchAll();
        }

        public function get_producto_x_id($prod_id){
            $conectar=parent::Conexion();
            parent::set_name();
            $sql="SELECT * FROM tm_producto WHERE prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }


?>