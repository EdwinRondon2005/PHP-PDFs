<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();
$query = "SELECT nombre, precio FROM electrodomesticos WHERE proveedor = 'LG' ORDER BY precio ASC";
$result = mysqli_query($conexion, $query);

$html = "<h1>Electrodomésticos proporcionados por LG, ordenados por precio:</h1><ul>";
while ($row = mysqli_fetch_assoc($result)) {
    $html .= "<li>" . $row['nombre'] . " - $" . $row['precio'] . "</li>";
}
$html .= "</ul>";
$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('electrodomesticos_lg_ordenados.pdf');
?>