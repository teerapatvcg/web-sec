<?php
include('cors.php');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "testing";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$OrderID= $_POST['OrderID'];
$Serial = $_POST['Serial'];
$User= $_POST['User'];
$Name= $_POST['Name'];
$Tel= $_POST['Tel'];
$Address= $_POST['Address'];
$sql = "INSERT INTO `orders` (`OrderID`, `ProductID`, `User`, `status`, `name`, `tel`, `address`) VALUES ('$OrderID', '$Serial', '$User', '0' , '$Name', '$Tel', '$Address');";
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