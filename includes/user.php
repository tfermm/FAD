<?php

class user extends tdc_object{
	
	public $Id;
	public $User_Name;
	public $Password;
	public $Lawyer_Id;
	public $User_level;

	public function get($id1){
		if (TDC::db('t2')->GetAll("SELECT * FROM User WHERE Id=?", array($id1))){
			$user = TDC::db('t2')->GetAll("SELECT * FROM User WHERE Id=?", array($id1));
			$user = $user[0];
			$user_object = new user;
			$user_object->Id=$user['Id'];
			$user_object->User_Name=$user['User_Name'];
			$user_object->Password=$user['Password'];
			$user_object->Calendar_Id=$user['Calendar_Id'];
			$user_object->Lawyer_Id=$user['Lawyer_Id'];
			$user_object->User_level=$user['User_level'];
			return $user_object;
		}
		else{
			return new user;
		}
	}


	public function save(){

			if (TDC::db('t2')->GetOne("SELECT Id from User WHERE Id=?", array($this->Id))){
				if(TDC::db('t2')->Execute("UPDATE User SET User_Name=?, Password=?, Lawyer_Id=?, User_level=? WHERE Id=?", array($this->User_Name, $this->Password, $this->Lawyer_Id, $this->User_level, $this->Id))){		
					return true;
				}
				else{
					return false;
				}
			}
			else{
				if(TDC::db('t2')->Execute("INSERT INTO User (User_Name, Password, Lawyer_Id, User_level) VALUES (?,?,?,?)", array($this->User_Name, $this->Password, $this->Lawyer_Id, $this->User_level))){		
					return true;
				}	
				else{
					return false;
				}
			}
			return false;
	}
	public function get_lawyer(){
		$name = TDC::db('t2')->GetOne("SELECT User_Name FROM User WHERE Id=?", array($this->Lawyer_Id));
		return $name;
	}
	public function forms(){
		return forms::get($this);
	}
	public function calendar(){
		return calendar::get($this->Calendar_Id);	
	}


	public function User_Type(){
		$type = TDC::db('t2')->GetOne("SELECT Description FROM User_Levels WHERE Id=?", array($this->User_level));	
		return $type;	
	}
}
