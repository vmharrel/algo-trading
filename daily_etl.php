<?php

##############################################################
### Description:  This script pulls a list of globaly 
### publicly traded stocks and downloads daily stock data.
###
### Author:  Vijay Harrell
### Title:   List of Publicly Traded Stocks
###
##############################################################

#  Set PHP and Script configurations
error_reporting(E_ALL);

#  Pull list of stocks
$file = file_get_contents('stocks.json');
$data = json_decode($file);

#echo "File Contents:\n";
#print_r($data->result[0]->companies_traded);
#echo "\n";

foreach ($data->result as $exchanges) {
	$list[] = $exchanges->companies_traded;
}

echo "Companies Traded:\n";
print_r($list[3]);
echo "\n";

function calcSharpeRatio($start, $end, array $prices) {

}

function iterate_json($file) {
	$jsonIterator = new RecursiveIteratorIterator(
		new RecursiveArrayIterator(json_decode($file, TRUE)),
		RecursiveIteratorIterator::SELF_FIRST);

	foreach ($jsonIterator as $key => $val) {
	    if(is_array($val)) { echo "$key:\n"; } else { echo "$key => $val\n"; }
	}
}

?>