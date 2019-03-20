<?php
$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "Testbase";
//$ClientID = $_POST["ClientID"];
$RoomID = $_POST["RoomID"];
//$FirstName = $_POST["FirstName"];
//$Surname = $_POST["Surname"];
//$Telephone = $_POST["Telephone"];
//$Email = $_POST["Email"];
//$Date = $_POST["Date"];


//Create connection
$conn = new mysql($servername, $username, $password, $dbname);
//Check connection
if ($conn->connect_error) {
    die("Connection failed");
}
$sql = "INSERT INTO clientinfo (RoomID) VALUES ('$RoomID')";

if ($conn->query($sql) === TRUE) {
    echo "Import successful";
}   else {
    echo "Something went wrong";
}

$conn->close();
?>