<?php

$server = "localhost";
$username = "root";
$password = "";
$db_name = "olms";

$con = new mysqli($server, $username, $password, $db_name);
if(!$con) {
    die ("connection failed:" . mysqli_connect_error);
}
else {
    echo "<script> alert('successfully connected') </script>";
}
?>