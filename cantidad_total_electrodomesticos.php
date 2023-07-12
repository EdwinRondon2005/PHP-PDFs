<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();

$query = "SELECT COUNT(*) AS total FROM electrodomesticos";
$result = mysqli_query($conexion, $query);
$row = mysqli_fetch_assoc($result);

$html = "<h1>La cantidad total de electrodomésticos es: " . $row['total'] . "</h1>";

// Cerrar conexión
$conexion->close();

$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('cantidad_total_electrodomesticos.pdf');


