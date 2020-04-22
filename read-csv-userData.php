<?php

$results = array (
	"0" => array(
		"Name" => "Ryan Gordon" ,
		"Email" => "ryangordon@inbound.com",
		"Age" => "10",
		"Location" => "Antigua & Barbuda"
	),

	"1" => array(
		"Name" => "Anna Grey", 
		"Email" => "annagrey@inbound.com",
		"Age" => "20",
		"Location" => "Saint Lucia"
	),

	"2" => array(
		"Name" => "Jodian Thompson", 
		"Email" => "jodianthompson@inbound.com",
		"Age" => "17",
		"Location" => "The Bahamas"
	),

	"3" => array(
		"Name" => "Rebecca Sharpe", 
		"Email" => "rebeccasharpe@inbound.com",
		"Age" => "22",
		"Location" => "Haiti"
	),

	"4" => array(
		"Name" => "Sasha Hinds", 
		"Email" => "sashahinds@inbound.com",
		"Age" => "18",
		"Location" => "Bermuda"
	),

	"5" => array(
		"Name" => "Monique Campbell", 
		"Email" => "moniquecampbell@inbound.com",
		"Age" => "23",
		"Location" => "British Virgin Island"
	),

	"6" => array(
		"Name" => "Nicole Robinson", 
		"Email" => "nicolerobinson@inbound.com",
		"Age" => "19",
		"Location" => "Trinidad & Tobago"
	),

	"7" => array(
		"Name" => "Patricia Rodgers", 
		"Email" => "patriciarodgers@inbound.com",
		"Age" => "28",
		"Location" => "Jamaica"
	),

	"8" => array(
		"Name" => "Sarah Geiger", 
		"Email" => "sarahgeiger@inbound.com",
		"Age" => "24",
		"Location" => "England"
	),

	"9" => array(
		"Name" => "Deborah Lynam", 
		"Email" => "deborahlynam@inbound.com",
		"Age" => "27",
		"Location" => "Canada"
	),

	"10" => array(
		"Name" => "Evelyn Wood", 
		"Email" => "evelynwood@inbound.com",
		"Age" => "30",
		"Location" => "USA"
	)
);

$filename = 'userData.csv';

header("Content-type: text/csv");

header("Content-Disposition: attachment; filename=$filename");

$output = fopen("php://output", "r");

$header = array_keys($results[0]);

fputcsv($output, $header);

foreach ($results as $row) {
	fputcsv($output, $row);
}

fclose($output);

?>