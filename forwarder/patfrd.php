<?php 

session_start();

$_SESSION["role"] = "pat";

header ("Location: ../login"); 

?>