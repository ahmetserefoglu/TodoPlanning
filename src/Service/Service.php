<?php

namespace App\Service;

use Symfony\Component\HttpClient\HttpClient;

/**
 * Api Service Class
 */
class Service {
	/**
	 *@var string
	 */
	private $clientApi;

	function __construct(string $clientApi) {
		$this->clientApi = $clientApi;
	}

	public function servisControl() {

		$client = HttpClient::create();
		$response = $client->request('GET', $this->clientApi);

		$statusCode = $response->getStatusCode();
		// $statusCode = 200
		$contentType = $response->getHeaders()['content-type'][0];
		// $contentType = 'application/json'
		$content = $response->getContent();
		// $content = '{"id":'Task', "sure":6, ...}'
		$content = $response->toArray();

		return $content;
	}
}