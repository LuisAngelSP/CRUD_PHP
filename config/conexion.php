<?php

    class Conectar{
        protected $dbh;

        protected function Conexion(){

            try{
                $conectar= $this->dbh = new PDO("mysql:local=localhost;dbname=crud_php","root","");
                return $conectar;
            }catch(Exception $e){
                print "Error BD!" . $e->getMessage() . "<br/>";
            }
        }

        public function set_name(){
            return $this->dbh->query("SET NAMES 'utf8'");
        }
    }
?>