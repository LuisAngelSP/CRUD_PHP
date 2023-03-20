<?php 

    class Producto extends Conectar{

        public function get_producto(){
            $conectar= parent::conexion();
            parent::set_name();
            $sql="SELECT 
                tm_product.prod_id,
                tm_product.cat_id, 
                tm_product.prod_nom, 
                tm_product.prod_desc, 
                tm_product.prod_cantidad, 
                tm_categoria.cat_nom 
                FROM tm_product LEFT JOIN 
                tm_categoria on tm_product.cat_id = tm_categoria.cat_id 
                WHERE tm_product.est = 1 ;";


            $sql=$conectar->prepare($sql);
            $sql->execute();

            return $resultado=$sql->fetchAll();
        }

        public function get_producto_x_id($prod_id){
            $conectar=parent::Conexion();
            parent::set_name();
            $sql="SELECT * FROM tm_product WHERE prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function delete_producto($prod_id){
            $conectar=parent::Conexion();
            parent::set_name();
            $sql="UPDATE tm_product
                SET 
                est = 0,
                fech_elim = now()
                WHERE 
                prod_id = ?;";

            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function insert_producto($cat_id,$prod_nom,$prod_desc,$prod_cantidad){
            $conectar=parent::Conexion();
            parent::set_name();
            $sql="INSERT INTO tm_product (prod_id, cat_id, prod_nom,prod_desc, prod_cantidad, fech_crea, fech_modi, fech_elim, est) 
                    VALUES (NULL,?, ?, ?, ?,now(), NULL, NULL, 1);";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$cat_id);
            $sql->bindValue(2,$prod_nom);
            $sql->bindValue(3,$prod_desc);
            $sql->bindValue(4,$prod_cantidad);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function update_producto($prod_id,$cat_id,$prod_nom,$prod_desc,$prod_cantidad){
            $conectar=parent::Conexion();
            parent::set_name();
            $sql="UPDATE tm_product 
                SET 
                cat_id = ?,
                prod_nom = ?,
                prod_desc = ?,
                prod_cantidad = ?,
                fech_modi = now()
                WHERE 
                prod_id = ?;";

            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$cat_id);
            $sql->bindValue(2,$prod_nom);
            $sql->bindValue(3,$prod_desc);
            $sql->bindValue(4,$prod_cantidad);
            $sql->bindValue(5,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }


?>