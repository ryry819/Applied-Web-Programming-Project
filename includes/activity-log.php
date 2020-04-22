<?php
$ipaddress = $_SERVER['REMOTE_ADDR'];
$webpage = $_SERVER['SCRIPT_NAME'];
$timestamp = date('d/m/Y h:i:s');
$browser = $_SERVER['HTTP_USER_AGENT'];
$fp = fopen("activity.log", 'a+');
fwrite($fp, '['.$timestamp.']: '.$ipaddress.' '.$webpage.' '.$browser. " " ."\n");
fclose($fp);
echo "Your information has been logged";

?>
