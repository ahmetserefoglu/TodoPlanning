<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\WorkPlanRepository")
 */
class WorkPlan {
	/**
	 * @ORM\Id()
	 * @ORM\GeneratedValue()
	 * @ORM\Column(type="integer")
	 */
	private $id;

	/**
	 * @ORM\Column(type="string", length=255)
	 */
	private $workplan;

	/**
	 * @ORM\Column(type="string", length=255)
	 */
	private $zorluk;

	/**
	 * @ORM\Column(type="string", length=255)
	 */
	private $sure;

	public function getId():  ? int {
		return $this->id;
	}

	public function getWorkplan() :  ? string {
		return $this->workplan;
	}

	public function setWorkplan(string $workplan) : self{
		$this->workplan = $workplan;

		return $this;
	}

	public function getZorluk():  ? string {
		return $this->zorluk;
	}

	public function setZorluk(string $zorluk) : self{
		$this->zorluk = $zorluk;

		return $this;
	}

	public function getSure():  ? string {
		return $this->sure;
	}

	public function setSure(string $sure) : self{
		$this->sure = $sure;

		return $this;
	}
}
