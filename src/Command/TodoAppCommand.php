<?php

namespace App\Command;

use App\Entity\TodoPlan;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\HttpClient\HttpClient;

class TodoAppCommand extends Command {
	protected static $defaultName = 'TodoApp';

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
			->setName('app:TodoApp')
			->setDescription('Todo App Work List')
		;
	}

	protected function execute(InputInterface $input, OutputInterface $output) {

		$client = HttpClient::create();
		$response = $client->request('GET', 'http://www.mocky.io/v2/5d47f24c330000623fa3ebfa');

		$statusCode = $response->getStatusCode();
		// $statusCode = 200
		$contentType = $response->getHeaders()['content-type'][0];
		// $contentType = 'application/json'
		$content = $response->getContent();
		// $content = '{"id":'Task', "sure":6, ...}'
		$content = $response->toArray();

		foreach ($content as $value) {

			$todoPlan = (new TodoPlan())
				->setTask($value['id'])
				->setTimeHour($value['sure'])
				->setHardDegree($value['zorluk'])

			;

			$this->em->persist($todoPlan);
		}

		$this->em->flush();

		$output->writeln('Ahmet Serefoglu');

	}
}
