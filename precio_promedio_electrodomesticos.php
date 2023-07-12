<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();


$proveedor = "Samsung";
$query = "SELECT AVG(precio) AS precio_promedio FROM electrodomesticos WHERE proveedor = '$proveedor'";
$result = mysqli_query($conexion, $query);
$row = mysqli_fetch_assoc($result);

$html = "<h1>El precio promedio de los electrodomésticos de $proveedor es: $" . $row['precio_promedio'] . "</h1>";


// Cerrar conexión
$conexion->close();

$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('precio_promedio_electrodomesticos.pdf');
?>