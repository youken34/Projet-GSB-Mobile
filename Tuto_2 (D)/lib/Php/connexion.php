<?php

$host = 'localhost';
$dbname = 'appmobile';
$user = 'root';
$password ='';
    
    try {
        $db = new PDO("mysql:host=$host; dbname=$dbname", $user, $pass);
        echo "connected";
    } catch (\Throwable $th) {
        echo "Error: ".$th->getMessage();
    }


?>
