<?php

$greet = array("1","2","3","4","5");
$i = rand(0,4);

echo "$greet[$i]";

$count = file_get_contents("visit.txt");
$count++;

echo "$count";

file_put_contents("visit.txt", $count);

?>
