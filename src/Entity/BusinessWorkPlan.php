<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\BusinessWorkPlanRepository")
 */
class BusinessWorkPlan
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $task;

    /**
     * @ORM\Column(type="integer")
     */
    private $timeHour;

    /**
     * @ORM\Column(type="integer")
     */
    private $hardDegree;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTask(): ?string
    {
        return $this->task;
    }

    public function setTask(string $task): self
    {
        $this->task = $task;

        return $this;
    }

    public function getTimeHour(): ?int
    {
        return $this->timeHour;
    }

    public function setTimeHour(int $timeHour): self
    {
        $this->timeHour = $timeHour;

        return $this;
    }

    public function getHardDegree(): ?int
    {
        return $this->hardDegree;
    }

    public function setHardDegree(int $hardDegree): self
    {
        $this->hardDegree = $hardDegree;

        return $this;
    }
}
