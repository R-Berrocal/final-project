<?php

require_once(__DIR__ . '/connection.php');

class PersonalInformationModel extends Connection
{

    public function getTypeSalaries()
    {
        $query = "SELECT id, value FROM type_salary";
        return parent::findAll($query);
    }

    public function getTypeHousing()
    {
        $query = "SELECT id, value FROM type_housing";
        return parent::findAll($query);
    }

    public function getTypeContract()
    {
        $query = "SELECT id, value FROM type_contract";
        return parent::findAll($query);
    }

    public function getTypeCharge()
    {
        $query = "SELECT id, value FROM type_charge";
        return parent::findAll($query);
    }

    public function getEducationLevels()
    {
        $query = "SELECT id, value FROM education_level";
        return parent::findAll($query);
    }

    public function getCivilStatuses()
    {
        $query = "SELECT id, value FROM civil_status";
        return parent::findAll($query);
    }

    public function getDurationJobs()
    {
        $query = "SELECT id, value FROM duration_job";
        return parent::findAll($query);
    }


}