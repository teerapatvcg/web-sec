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
$id= $_POST['id_car_img'];
$Pic1= $_POST['Pic1'];
$Pic2= $_POST['Pic2'];
$Pic3= $_POST['Pic3'];
$sql = "UPDATE `car_all` SET `Pic1`='$Pic1', `Pic2`='$Pic2',`Pic3`='$Pic3' WHERE `id`= $id";
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