<?php

	class form extends tdc_object{
		public $User_Id;
		
		public function get_form($id){
			$form_object = new forms;
			if (TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE Id=?", array($id))){
					$data = TDC::Db('t2')->GetAll("SELECT * FROM Forms WHERE User_Id=?", array($this->User_Id));
					$form_object['Id'] = $data['Id'];
					$form_object['User_Id'] = $data['User_Id'];
					$form_object['Type'] = $data['Type'];
					$form_object['Description'] = $data['Description'];
			}
			return $form_object;
		}

		public function get_avail_user_forms(){
			$sql = "SELECT t1.Description, t1.Id FROM Form_Type t1 
							WHERE NOT EXISTS 
							(SELECT Id FROM Forms t2 WHERE t2.Type = t1.Id AND t2.User_Id=?)
							ORDER BY t1.Id ASC";
			$forms = TDC::db('t2')->GetAll($sql, array($this->User_Id));
			foreach ($forms as $key=>$form){
				$output[$key]=array('Id'=>$form['Id'], 'Description'=>$form['Description']);	
			}
			return $output;
		}
		public function get_user_forms(){
			$forms = TDC::db('t2')->GetAll("SELECT ft.Id, ft.Description, f.Id as Forms_Id, f.Date_created FROM Form_Type as ft LEFT JOIN Forms as f ON f.Type=ft.Id WHERE f.User_Id=?", array($this->User_Id));
			
			foreach ($forms as $key=>$form){
				TDC::dbug($key);
				$output[$key] = new form(array('User_Id'=>$this->User_Id, 'Type'=>$form['Id'], 'Description'=>$form['Description'], 'Id'=>$form['Forms_Id'], 'Date_Created'=>$form['Date_created']));
			}
			TDC::dbug($output);
			die;
		}

	}
