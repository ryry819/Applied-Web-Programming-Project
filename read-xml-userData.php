<?php

$xml = simplexml_load_file('employee_list.xml');

echo '<h2>Employees Listing</h2>';

$list = $xml->record;

for ($i = 0; $i < count($list); $i++) {

    echo '<b>ID#:</b> ' . $list[$i]->attributes()->id . '<br>';

    echo '<b>Name:</b> ' . $list[$i]->name . '<br>';

    echo '<b>Position:</b> ' . $list[$i]->position . '<br><br>';

}
?>