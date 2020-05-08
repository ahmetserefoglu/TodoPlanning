<?php

namespace App\Strategy;

use App\BusinessWorkPlan;
use App\Entity\Developer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BusinessWorkCalculate implements CalculatePlan
{
    public function weekPlanList($queryResult) {
        $weekHour = EnumValue::weekHour;
		$sumTime = EnumValue::sumTime;
		$week = EnumValue::week;
		$taskTime = EnumValue::taskTime;
		$weekPlan = EnumValue::weekPlan;

		foreach ($queryResult as $key => $value) {

			$sumTime += $value['timeHour'];

			if ($sumTime <= $weekHour) {
				array_push($value, $week . ".Week Plan");
				array_push($weekPlan, $value);

			} else {
				$mod = fmod($sumTime, $weekHour);
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
