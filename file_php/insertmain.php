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

$Model1= $_POST['Model1'];
$Year = $_POST['Year'];
$Detailcar= $_POST['Detailcar'];
$CC= $_POST['CC'];
$Gear= $_POST['Gear'];
$Seats= $_POST['seats'];
$Mileage= $_POST['Mileage'];
$Color = $_POST['Color'];
$Register= $_POST['Register'];
$Province= $_POST['Province'];
$Price= $_POST['Price'];
$Promotion= $_POST['Promotion'];
$Status= $_POST['Status'];
$Detail= $_POST['Detail'];
$Pic1= $_POST['Pic1'];
$Pic2= $_POST['Pic2'];
$Pic3= $_POST['Pic3'];
$sql = "INSERT INTO `car_all` (`Model`, `Year`, `Detailcar`, `CC`, `Gear`, `Seats`, `Mileage`,`Color`, `Register`, `Province`, `Price`, `Promotion`, `Status`, `Detail`,`Pic1`,`Pic2`,`Pic3`) VALUES ('$Model1', '$Year', '$Detailcar', '$CC', '$Gear', '$Seats', '$Mileage','$Color', '$Register', '$Province', '$Price', '$Promotion', '$Status', '$Detail','$Pic1','$Pic2','$Pic3');";
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