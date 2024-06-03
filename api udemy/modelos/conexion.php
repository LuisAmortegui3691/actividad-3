<?php
    // Archivo de conexión (por ejemplo, conexion.php)
    class Conexion {
        public static function conectar() {
            $host = 'localhost';
            $dbname = 'api_udemy';
            $username = 'root';
            $password = '';

            try {
                $conexion = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
                return $conexion;
            } catch(PDOException $e) {
                echo "Error de conexión: " . $e->getMessage();
                exit();
            }
        }
    }
?>