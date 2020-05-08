<?php

namespace App\Strategy;

interface CalculatePlan
{
    /**
     * @param mixed $queryresult
     */

    public function weekPlanList($queryresult);

}