<?php

namespace App\Strategy;

class Context 
{
    public $todoquery = null;
    public $apisource = "";
     
    public function __construct($todoquery,$apisource) {
        $this->todoquery = $todoquery;
        $this->apisource = $apisource;
    }
     
    public function getQuery() {
        return $this->todoquery;
    }
     
    public function setQuery($todoquery) {
        $this->todoquery = $todoquery;
    }
    
    public function getApiSource() {
        return $this->apisource;
    }
     
    public function setApiSource($apisource) {
        $this->apisource = $apisource;
    }

    public function weekPlan() {

        if ($this->apisource=="Todo") {
            $weekplan = new TodoWorkCalculate();
        }else{
            $weekplan = new BusinessWorkCalculate();
        }
        
 
        return $weekplan->weekPlanList($this->todoquery);
    }


}
