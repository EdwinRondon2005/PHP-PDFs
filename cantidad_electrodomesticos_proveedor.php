<?php

// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "electrodomesticos");


require_once 'dompdf/autoload.inc.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();

$query = "SELECT proveedor, COUNT(*) AS cantidad FROM electrodomesticos GROUP BY proveedor HAVING cantidad > 0";
$result = mysqli_query($conexion, $query);

$html = "<h1>Cantidad de electrodomésticos por proveedor:</h1><ul>";
while ($row = mysqli_fetch_assoc($result)) {
    $html .= "<li>" . $row['proveedor'] . ": " . $row['cantidad'] . "</li>";
}
$html .= "</ul>";

$dompdf->loadHtml($html);

$dompdf->setPaper('A4', 'portrait');

$dompdf->render();

$dompdf->stream('cantidad_electrodomesticos_proveedor.pdf');
 ?>