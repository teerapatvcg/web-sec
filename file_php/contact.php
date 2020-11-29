<?php
include('cors.php');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "web";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$tel= $_POST['tel'];
$line = $_POST['line'];
$email= $_POST['email'];
$address= $_POST['address'];
$sql = "UPDATE `contact` SET `tel`='$tel', `line`='$line',`email`='$email',`address`='$address' WHERE `id`= 1";
// $userData = mysqli_query($conn,"select * from tbl_sample");
// $response = array();

// while($row = mysqli_fetch_assoc($userData)){

//    $response[] = $row;
// }

// echo json_encode($response);

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>