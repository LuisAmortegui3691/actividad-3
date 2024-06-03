<?php

require_once "conexion.php";
// Modelo de categorias y subcategorais
class ModeloCategorias{
    // Mostrar categorias y subcategorias
	static public function mdlMostrarCATySUB($tabla, $item, $valor){ 
		if($item == null && $valor == null){
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
			$stmt -> execute();
			return $stmt -> fetchAll();
		}else{
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");
			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();
		}
		$stmt = null;
	}
}