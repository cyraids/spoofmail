<?php

if (isset($_POST['from'])) {

$to = $_POST['to'];

$subject = $_POST['subject'];

$msg = $_POST['message'];

$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

$headers .= "From: ".$_POST['name']."<".$_POST['from'].">";

$send = mail($to,$subject,$msg,$headers);

if ($send) {

  echo "success: ".$to;

}else{

  echo "failed: ".$to;

}

exit();

}

?>