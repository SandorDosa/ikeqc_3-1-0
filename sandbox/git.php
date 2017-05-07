<?php
// Testing GitHub Webhook

IF (isset($_POST)) {
    $hook[] = var_dump($_POST);
    $file = 'GitAlarm.txt';
    file_put_contents($file, $hook);
}
?>