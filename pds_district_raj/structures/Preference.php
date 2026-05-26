<?php

class Preference{
  public $Id;
  public $Name;
  public $Preference;

    /**
     * Get the value of Id
     */
    public function getId()
    {
        return $this->Id;
    }

    /**
     * Set the value of Id
     */
    public function setId($Id)
    {
        $this->Id = $Id;
        return $this;
    }

    /**
     * Get the value of name
     */
    public function getName()
    {
        return $this->Name;
    }

    /**
     * Set the value of name
     */
    public function setName($name)
    {
        $this->Name = $name;
        return $this;
    }

    /**
     * Get the value of preference
     */
    public function getPreference()
    {
        return $this->Preference;
    }

    /**
     * Set the value of preference
     */
    public function setPreference($preference)
    {
        $this->Preference = $preference;
        return $this;
    }


    function insert(Preference $Preference){
        return "INSERT INTO preferences(id, name, preference) VALUES ('".$Preference->getId()."', '".$Preference->getName()."', '".$Preference->getPreference()."')";
    }
	
	function check(Preference $Preference){
        return "SELECT * FROM preferences WHERE name='".$Preference->getName()."'";
    }

	function checkPreference(Preference $Preference){
        return "SELECT * FROM preferences WHERE preference='".$Preference->getPreference()."' AND id != '".$Preference->getId()."'";
    }

    function delete(Preference $Preference){
        return "DELETE FROM preferences WHERE id='".$Preference->getId()."'";
    }
	
	function logname(Preference $Preference){
        return "SELECT name FROM preferences WHERE id='".$Preference->getId()."'";
    }

    function update(Preference $Preference){
      return  "UPDATE preferences SET name='".$Preference->getName()."', preference='".$Preference->getPreference()."' WHERE id = '".$Preference->getId()."'";
    }

}

 ?>
