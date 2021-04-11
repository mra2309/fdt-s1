<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nsone";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM product";
$result = $conn->query($sql);
$data =null;
if ($result->num_rows > 0) {
  // output data of each row
	foreach ($result as $index => $value) {
		$data[$index] = $value;
		$data[$index]['detail'] = [];
		$qq = mysqli_query($conn,"SELECT * FROM product_detail where id_product=".$value['id']);
		foreach ($qq as $i => $value) {
			$data[$index]['detail'][$i] = $value;
		}
	}
}

// echo $data;
// $myJSON = json_encode($data,JSON_FORCE_OBJECT);
// echo $myJSON;

$conn->close();
?>