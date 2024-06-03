<?php

// Controlador de categorias y sub-categorais
class ControladorCategorias{
    // Mostrar categorias y sub-categorias
	static public function ctrMostrarCATySUB($tabla, $item, $valor){
		$respuesta = ModeloCategorias::mdlMostrarCATySUB($tabla, $item, $valor);
		return $respuesta;
	}
}