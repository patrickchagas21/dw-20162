<?php
require 'calc.php';
$number = $_GET['fatorial'];
$output = ($number != "")?"O fatorial de $number é fatorial($number)":"Não foi digitado valor algum";
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <p><?php echo $output?></p>
  </body>
</html>
