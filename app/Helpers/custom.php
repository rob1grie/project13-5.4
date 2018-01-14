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
	
	public static function formatPhoneNumber($number) {
		$result = '';
		
		// Test that $number is 10 digits
		if (!preg_match('/[0-9]{10}/', $number)) {
			return false;
		}
		
		$result = '(' . substr($number, 0, 3) . ') ' . substr($number, 3, 3) . '-' . substr($number,6);
		
		return $result;
	}
}