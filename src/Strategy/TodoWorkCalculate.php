<?php

namespace App\Strategy;

use App\TodoPlan;
use EnumValue;

class TodoWorkCalculate implements CalculatePlan
{
    public function weekPlanList($queryResult) {
        $weekHour = EnumValue::weekHour;
		$sumTime = EnumValue::sumTime;
		$week = EnumValue::week;
		$taskTime = EnumValue::taskTime;
		$weekPlan = EnumValue::weekPlan;
		$weekPlanString = EnumValue::weekPlanString;

		foreach ($queryResult as $key => $value) {

			$sumTime += $value['timeHour'];

			if ($sumTime <= $weekHour) {
				array_push($value, $week . $weekPlanString);
				array_push($weekPlan, $value);

			} else {
				$mod = fmod($sumTime, $weekHour);
				$value['timeHour'] = $value['timeHour'] - $mod;
				if ($value['timeHour'] != 0) {
					array_push($value, $week . $weekPlanString);
					array_push($weekPlan, $value);
				}

				$week++;
				$value['timeHour'] = $mod;
				$value['0'] = $week . $weekPlanString;
				array_push($value, $week . $weekPlanString);
				array_push($weekPlan, $value);
				$sumTime = $mod;

			}

		}

		return $weekPlan;
    }
     
    
}
