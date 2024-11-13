<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "contactos";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificación
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtención datos formulario
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$telefono = $_POST['telefono'] ?? '';
$asunto = $_POST['asunto'] ?? '';
$comentarios = $_POST['comentarios'];

//Inyección BD
$sql = "INSERT INTO mensajes_contacto (nombre, email, telefono, asunto, comentarios) VALUES ('$nombre', '$email', '$telefono', '$asunto', '$comentarios')";

if ($conn->query($sql) === TRUE) {
    echo "Gracias, tu mensaje ha sido enviado con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>