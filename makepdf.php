<?php

require_once __DIR__ . '/vendor/autoload.php';


$name = $_POST['fullname'];
$email = $_POST['emailid'];
$mobilenumber = $_POST['mobilenumber'];
$dob = $_POST['dob'];
$address = $_POST['address'];
$city = $_POST['city'];
$country = $_POST['country'];

//Create  PDF Instance
$mpdf = new \Mpdf\Mpdf();

//Create our PDF
$data = '';

$data .= '<h1 align ="center">Profile Details</h1>';


//Add data
$data .= '<strong>Full Name:</strong>' .' ' . $name . '<br />'.'<br>';
$data .= '<strong>Email:</strong>' . ' ' . $email . '<br />'.'<br>';
$data .= '<strong>Phone Number:</strong>' .' ' . $mobilenumber . '<br />'.'<br>';
$data .= '<strong>Date of Birth:</strong>' .' ' . $dob . '<br />'.'<br>';
$data .= '<strong>Address:</strong>' .' ' . $address . '<br />'.'<br>';
$data .= '<strong>City:</strong>' .' ' . $city . '<br />'.'<br>';
$data .= '<strong>Country:</strong>' .' ' . $country . '<br />'.'<br>';


//IF Statement that include concatenation assignment of "$message" variable with $data" variable. Data send out will be stored in the "message" variable
/*if($message){
	$data .= '<strong>Message:</strong>' .' ' . $message;
}*/


//Write PDF
$mpdf->WriteHTML($data);


//Output to Browser
$mpdf->Output('RKSD Car Rental Report.pdf', 'F');

?>