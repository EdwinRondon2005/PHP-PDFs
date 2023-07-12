<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();

$min_precio = 500;
$max_precio = 1000;
$query = "SELECT nombre, precio FROM electrodomesticos WHERE precio BETWEEN $min_precio AND $max_precio";
$result = mysqli_query($conexion, $query);

$html = "<h1>Electrodomésticos con precio entre $$min_precio y $$max_precio:</h1><ul>";
while ($row = mysqli_fetch_assoc($result)) {
    $html .= "<li>" . $row['nombre'] . " - $" . $row['precio'] . "</li>";
}
$html .= "</ul>";

$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('electrodomesticos_precio_entre.pdf');
 ?>
