<?php
$host = "localhost";
$port = "5432";
$dbname = "universitas";
$user = "postgres";
$password = "andre123";

$conn = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if (!$conn) {
    error_log("Koneksi gagal");
} else {
    error_log("Koneksi berhasil!");
}
?>