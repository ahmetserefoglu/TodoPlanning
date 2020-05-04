<?php

require __DIR__ . '/vendor/autoload.php';

$client = new \GuzzleHttp\Client([
	'base_url' => 'http://127.0.0.1:8000',
	'defaults' => [
		'exceptions' => false,
	],
]);

$response = $client->get('api/todos');

echo $response;
