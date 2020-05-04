<?php

namespace App\Command;

use App\Entity\BusinessWorkPlan;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\HttpClient\HttpClient;

class BusinessCommand extends Command {
	protected static $defaultName = 'Business';

	/**
	 *@var EntityManagerInterface
	 */
	private $em;
	public function __construct(EntityManagerInterface $em) {
		parent::__construct();
		$this->em = $em;
	}

	protected function configure() {
		$this
			->setName('app:Business')
			->setDescription('Business Work List')
		;
	}

	protected function execute(InputInterface $input, OutputInterface $output) {

		$client = HttpClient::create();
		$response = $client->request('GET', 'http://www.mocky.io/v2/5d47f235330000623fa3ebf7');

		$statusCode = $response->getStatusCode();
		// $statusCode = 200
		$contentType = $response->getHeaders()['content-type'][0];
		// $contentType = 'application/json'
		$content = $response->getContent();
		// $content = '{"id":'Task', "sure":6, ...}'
		$content = $response->toArray();

		//var_export($content);

		foreach ($content as $value => $innerArray) {

			foreach ($innerArray as $inner => $key) {
				$businessPlan = (new BusinessWorkPlan())
					->setTask($inner)
					->setTimeHour($key['estimated_duration'])
					->setHardDegree($key['level'])

				;

				$this->em->persist($businessPlan);
			}
		}

		$this->em->flush();

		$output->writeln('Ahmet Serefoglu');

	}
}
