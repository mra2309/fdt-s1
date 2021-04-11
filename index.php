<?php

// Mulai session
session_start();

// Load twig.php
require_once __DIR__.'/twig.php';

// Load konfigurasi database
include 'connection.php';


//ambil data dari database
$sql = "SELECT * FROM product";
$result = $conn->query($sql);
$data =null;
if ($result->num_rows > 0) {
	foreach ($result as $index => $value) {
		$data[$index] = $value;
		$data[$index]['detail'] = [];
		$qq = mysqli_query($conn,"SELECT * FROM product_detail where id_product=".$value['id']);
		foreach ($qq as $i => $value) {
			$data[$index]['detail'][$i] = $value;
		}
	}
}


session_unset();
session_destroy();

// Variabel judul halaman
$title = "Niagahoster | Web Hosting Indonesia Unlimited - Gratis Domain & SSL";

// Render template index.html
// Kirim variabel
echo $twig->render('/index.html', ['title' => $title, 'data' => $data]);