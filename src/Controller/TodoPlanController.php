<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TodoPlanController extends AbstractController {
	/**
	 * @Route("/todo/plan", name="todo_plan")
	 */
	public function index() {

		$em = $this->getDoctrine()->getManager();
		$query = $em->createQuery(
			'SELECT c
	        FROM App:TodoPlan c'
		);
		$result = $query->getArrayResult();

		$response = new Response(json_encode($result));
		$response->headers->set('Content-Type', 'application/json');

		//return $response;

		return $this->render('todo_plan/index.html.twig', [
			'todoplans' => $result]);

	}

}
