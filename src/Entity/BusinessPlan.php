<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\BusinessPlanRepository")
 */
class BusinessPlan {
	/**
	 * @ORM\Id()
	 * @ORM\GeneratedValue()
	 * @ORM\Column(type="integer")
	 */
	private $id;

	/**
	 * @ORM\Column(type="string", length=255)
	 */
	private $business;

	/**
	 * @ORM\Column(type="integer")
	 */
	private $level;

	/**
	 * @ORM\Column(type="integer")
	 */
	private $estimated_duration;

	public function getId():  ? int {
		return $this->id;
	}

	public function getBusiness() :  ? string {
		return $this->business;
	}

	public function setBusiness(string $business) : self{
		$this->business = $business;

		return $this;
	}

	public function getLevel():  ? int {
		return $this->level;
	}

	public function setLevel(int $level) : self{
		$this->level = $level;

		return $this;
	}

	public function getEstimatedDuration():  ? int {
		return $this->estimated_duration;
	}

	public function setEstimatedDuration(int $estimated_duration) : self{
		$this->estimated_duration = $estimated_duration;

		return $this;
	}
}
