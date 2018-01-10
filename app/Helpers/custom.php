<?php

namespace App\Helpers;

class Custom 
{
	public static function removeNonNumeric($string) {
		$result = '';
		
		for ($i = 0; $i < strlen($string); $i++) {
			if (preg_match('/[0-9]/', substr($string, $i, 1))) {
				$result .= substr($string, $i, 1);
			}
		}
		
		return $result;
	}
}