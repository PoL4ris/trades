<?php

class Utils{

    protected $db;

    function __construct(){
        $this->db = Database::connect();
    }

    function limpiar($valor){

        if(!empty($valor))
            $valor = filter_var($valor,FILTER_SANITIZE_MAGIC_QUOTES);
        else
            $valor = "";

        return $valor;
    }

}


