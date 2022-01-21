<?php

$u_name = $_POST["uname"];
$ph_no = $_POST["phno"];

if (preg_match("/^\d{3}-\d{3}-\d{4}/", $ph_no)) 
    echo "Correct Format!";
else
    echo "Incorrect Format! The correct format is XXX-XXX-XXXX";

?>
