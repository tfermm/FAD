<?php

class appointments extends tdc_object{
	public $Id;
	public $Cal_Id;
	public $Date_created;
	public $Apt_start;
	public $Apt_end;

	public function get($id1){
		$apps = new appointment;
		if (TDC::db('t2')->GetOne("SELECT Id FROM Appointments WHERE Id=?", array($id1))){
			$app == TDC::db('t2')->GetAll("SELECT * FROM Apointments WHERE Id=?", array($id1));
			$apps['Id'] = $app['Id'];
			$apps['Cal_Id'] = $app['Cal_Id'];
			$apps['Date_created'] = $app['Date_created'];
			$apps['Apt_start'] = $app['Apt_start'];
			$apps['Apt_end'] = $app['Apt_end'];
		}
		return $apps;
	}
	public function calendar(){
		return calendar::get($this->Cal_Id);
	}
	
	public function delete(){

		if(TDC::db('t2')->Execute("DELETE FROM Appointments WHERE Id=?", array($this->Id))){
			return true;
		}		
		return false;
	}

	public function save(){
		$current_app = TDC::db('t2')->GetAll("SELECT Id FROM Appointments WHERE (Apt_start >= ?	AND Apt_start <= ?) OR (Apt_end >= ? AND Apt_end <= ?)", array($this->Apt_start, $this->Apt_end, $this->Apt_start, $this->Apt_end));
		if (!$current_app){
			if (TDC::db('t2')->GetOne("SELECT Id FROM Appointments WHERE Id=?", array($this->Id))){
				if(TDC::db('t2')->Execute("UPDATE Appointments SET Id=?, Cal_Id=?, Date_created=?, Apt_start=?, Apt_end=?", array($this->Id, $this->Cal_Id, $this->Date_created, $this->Apt_start, $this->Apt_end))){
					return true;
				}
				else{
					return false;
				}
			}
			else{
				if ($this->Date_created){ 
					if(TDC::db('t2')->Execute("INSERT INTO Appointments (Cal_Id, Date_created, Apt_start, Apt_end) VALUES (?,?,?,?)", array($this->Cal_Id, $this->Date_created, $this->Apt_start, $this->Apt_end))){
						return true;
					}
					else{
						return false;
					}
				}
				else{
					if(TDC::db('t2')->Execute("INSERT INTO Appointments (Cal_Id, Apt_start, Apt_end) VALUES (?,?,?)", array($this->Cal_Id, $this->Apt_start, $this->Apt_end))){
						return true;
					}
					else{
						return false;
					}
				}
			}

		}
		else{
			return false;
		}
	}

}
