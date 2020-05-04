<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BusinessController extends AbstractController {
	/**
	 * @Route("/todo/business", name="business")
	 */
	public function index() {
		$em = $this->getDoctrine()->getManager();
		$query = $em->createQuery(
			'SELECT c
	        FROM App:BusinessWorkPlan c'
		);
		$business = $query->getArrayResult();

		$response = new Response(json_encode($business));
		$response->headers->set('Content-Type', 'application/json');

		//return $response;

		return $this->render('business/index.html.twig', [
			'business' => $business,
		]);

	}
}
