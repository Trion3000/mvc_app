<?php
$plus = $_GET['a'] + $_GET['b'];
$minus = $_GET['a'] - $_GET['b'];

$data = new stdClass();
$data->plus = $plus;
$data->minus = $minus;

echo json_encode($data);