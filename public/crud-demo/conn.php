<?php

$conn = @mysql_connect('127.0.0.1','response_p13acc2','P!34ccDB');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('response_p13acc2', $conn);

?>