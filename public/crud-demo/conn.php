<?php

$conn = @mysql_connect('localhost','user','user');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('users', $conn);

?>