<?php

class calendar extends tdc_object{
	public $Id;
	public $User_Id;
	public function get($id1){
		$cal_object = new calendar;
		if (TDC::db('t2')->GetOne("SELECT Id FROM Calendar where Id=?", array ($id1))){
			$cal = TDC::db('t2')->GetOne("SELECT User_Id FROM Calendar where Id=?", array ($id1));
			$cal_object->Id = $id1;
			$cal_object->User_Id = $cal;
			return $cal_object;	
		}
		else{
			return $cal_object;
		}

	}
	public function save(){
		if (TDC::db('t2')->GetOne("SELECT Id FROM Calendar where Id=?", array ($Id))){
			TDC::db('t2')->Execute("UPDATE Calendar SET Id=?, User_Id=?", array($Id, $User_Id));	
			return true;
		}
		else{
			TDC::db('t2')->Execute("INSERT INTO Calendar (Id, User_Id), VALUES (?,?)", array($Id, $User_Id));	
			return true;
		}
		return false;
	}
	public function appointments($date = null){
		if (!$date){
			$apps = TDC::db('t2')->GetAll("SELECT * FROM Appointments Where Cal_Id=?", array($this->Id));
		}
		else{
			$time = strtotime($date);
			$nextday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time)+ 1 ,date("Y", $time))) . ' 00:00:00';
			$today = $date . ' 00:00:00';
			$apps = TDC::db('t2')->GetAll("SELECT a.*, c.User_Id FROM Appointments as a, Calendar as c Where (a.Cal_Id = c.Id AND a.Apt_start > ? AND a.Apt_start < ?) ORDER BY a.Apt_start ASC", array($today, $nextday));
		}
		foreach ($apps as $key=>$app){
			$start_time = explode(' ', $app['Apt_start']);
			$date = $start_time[0];
			$start_time = $start_time[1];
			$end_time = explode(' ', $app['Apt_end']);
			$end_time = $end_time[1];
			$output[$key] = new appointments(array('Id' => $app['Id'], 'date'=>$date, 'start_time' => $start_time, 'end_time' => $end_time, 'User_Id'=>$app['User_Id'], 'Cal_Id' => $app['Cal_Id'], 'Date_created' => $app['Date_created'], 'Apt_start' => $app['Apt_start'], 'Apt_end' => $app['Apt_end']));
		}
		return $output;
	}
	public function get_user_cal($uid){
		if (TDC::db('t2')->GetOne("SELECT Id FROM Calendar WHERE User_Id=?", array($uid))){
			$id = TDC::db('t2')->GetOne("SELECT Id FROM Calendar WHERE User_Id=?", array($uid));
		}
		else{
			TDC::db('t2')->Execute("INSERT INTO Calendar (User_Id) VALUES (?)", array($uid));
			$id = TDC::db('t2')->GetOne("SELECT MAX(Id) as Id FROM Calendar");
		}
		return new calendar(array('Id' => $id, 'User_Id'=>$uid));
	}
	public function user_appointments($uid, $date){
		$time = strtotime($date);
		$nextday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time)+ 1 ,date("Y", $time))) . ' 00:00:00';
		$today = $date . ' 00:00:00';
		$apps = TDC::db('t2')->GetAll("SELECT a.*, c.User_Id FROM Appointments as a, Calendar as c Where (a.Cal_Id=? AND c.User_Id=?  AND a.Cal_Id = c.Id AND a.Apt_start > ? AND a.Apt_start < ?) ORDER BY a.Apt_start ASC", array($this->Id, $uid, $today, $nextday));
		foreach ($apps as $key=>$app){
			$start_time = explode(' ', $app['Apt_start']);
			$date = $start_time[0];
			$start_time = $start_time[1];
			$end_time = explode(' ', $app['Apt_end']);
			$end_time = $end_time[1];
			$output[$key] = new appointments(array('Id' => $app['Id'], 'date'=>$date, 'start_time' => $start_time, 'end_time' => $end_time, 'User_Id'=>$app['User_Id'], 'Cal_Id' => $app['Cal_Id'], 'Date_created' => $app['Date_created'], 'Apt_start' => $app['Apt_start'], 'Apt_end' => $app['Apt_end']));
		}
		return $output;
	}
	public function user(){
		return user::get($this->User_Id);
	}

}
