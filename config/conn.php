<?php
    $hostname   = "localhost";
    $username   = "root";
    $password   = "";
    $database   = "inventaris_db";

    $con = mysqli_connect($hostname, $username, $password, $database) or die (mysqli_error($con));
?>