<?php
class users{
	
	public function get(){
		$users = TDC::db('t2')->GetAll("SELECT * FROM User");	
		foreach ($users as $key => $user){
			$all_users[$key] = array('Id' => $user['Id'], 'User_Name' => $user['User_Name']);
		}
		return $all_users;
	}
	
}
