<?php

namespace App\Controller;

use App\Entity\Developer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Strategy\Context;
use App\Strategy\TodoWorkCalculate;

class DeveloperController extends AbstractController {
	/**
	 * @Route("/todo/devs", name="todo_devs")
	 */
	public function index() {
		$em = $this->getDoctrine()->getManager();
		$query = $em->createQuery(
			'SELECT c
			FROM App:Developer c'
		);
		$developers = $query->getArrayResult();

		$response = new Response(json_encode($developers));
		$response->headers->set('Content-Type', 'application/json');

		//return $response;

		return $this->render('developer/index.html.twig', [
			'developers' => $developers]);
	}

	/**
	 * @Route("/todo/devs/{id}", name= "developer_show")
	 * @Method({"GET"})
	 */
	public function show($id) {
		//$developer = $this->getDoctrine()->getRepository(TodoPlan::class)->find('hardDegree':$id);

		$em = $this->getDoctrine()->getManager();
		$query = $em->createQuery(
			'SELECT c
			FROM App:TodoPlan c Where c.hardDegree=' . $id . ' order by c.timeHour desc'
		);
		$queryDev = $em->createQuery(
			'SELECT d
			FROM App:Developer d '
		);
		$result = $query->getArrayResult();
		$resultDev = $queryDev->getArrayResult();

		//$results = $this->weekshow($result);
		$context = new Context($result,"Todo");
		$results = $context->weekPlan();
		
		//return $this->weekshow($result, $resultDev[0]["developer"]);
		return $this->render('developer/show.html.twig', ['businessdev' => $results,
			'developers' => $resultDev, 'dev' => $id]);

	}

	/**
	 * @Route("/business/devs/{id}", name= "business_show")
	 * @Method({"GET"})
	 */
	public function businesShow($id) {
		//$developer = $this->getDoctrine()->getRepository(TodoPlan::class)->find('hardDegree':$id);

		$em = $this->getDoctrine()->getManager();
		$query = $em->createQuery(
			'SELECT c
			FROM App:BusinessWorkPlan c Where c.hardDegree=' . $id . ' order by c.timeHour desc'
		);

		$queryDev = $em->createQuery(
			'SELECT d
			FROM App:Developer d'
		);
		$result = $query->getArrayResult();

		$context = new Context($result);
		$results = $context->weekPlan();

		/*$resultDev = $queryDev->getArrayResult();

		$results = $this->weekshow($result);

		$response = new Response(json_encode($results));
		$response->headers->set('Content-Type', 'application/json');*/

		//return $response;

		return $this->render('developer/show.html.twig', ['businessdev' => $results,
			'developers' => $resultDev, 'dev' => $id]);

	}

	function weekshow($queryResult) {
		$weekHour = 45;
		$sumTime = 0;
		$week = 1;
		$taskTime = array();
		$weekPlan = array();

		foreach ($queryResult as $key => $value) {

			$sumTime += $value['timeHour'];

			if ($sumTime <= $weekHour) {
				array_push($value, $week . ".Week Plan");
				array_push($weekPlan, $value);

			} else {
				$mod = fmod($sumTime, 45);
				$value['timeHour'] = $value['timeHour'] - $mod;
				if ($value['timeHour'] != 0) {
					array_push($value, $week . ".Week Plan");
					array_push($weekPlan, $value);
				}

				$week++;
				$value['timeHour'] = $mod;
				$value['0'] = $week . ".Week Plan";
				array_push($value, $week . ".Week Plan");
				array_push($weekPlan, $value);
				$sumTime = $mod;

			}

		}

		return $weekPlan;
	}

}
