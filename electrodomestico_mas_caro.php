<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();

$query = "SELECT nombre, precio FROM electrodomesticos WHERE precio = (SELECT MAX(precio) FROM electrodomesticos)";
$result = mysqli_query($conexion, $query);
$row = mysqli_fetch_assoc($result);

$html = "<h1>El electrodoméstico más caro es: " . $row['nombre'] . " ($" . $row['precio'] . ")</h1>";

$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('electrodomestico_mas_caro.pdf');