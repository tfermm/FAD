<?php

	class forms extends tdc_object{
		public $Id;
		public $User_Id;
		public $Type;
		public $Date_created;
		public $form_name;

		public function get($info){
			$id = $info->Forms_Id;
			if (TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE Id=?", array($id))){
					$data = TDC::Db('t2')->GetAll("SELECT * FROM Form_Fields WHERE Forms_Id=?", array($id));
					foreach($data as $thing){
						$output[$thing['Location_Id']] = $thing['Description'];
					}
					return $output;
			}
			else{
				return new forms(array('User_Id'=>$info->Id));
			}
		}

		public function get_forms_desc(){
			$desc = TDC::db('t2')->GetAll("SELECT * FROM Form_Type");
			foreach ($desc as $des){
				$key = $des['Id'];
				$output[$key] = $des['Long_Desc'];
			}
			return $output;
		}
		public function get_data($id){
			if (TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE Id=?", array($id))){
					$data = TDC::Db('t2')->GetAll("SELECT * FROM Form_Fields WHERE Forms_Id=?", array($id));
					foreach($data as $thing){
						$output[$thing['Location_Id']] = $thing['Description'];
					}
					return $output;
			}
		}
		public function save(){
			if (TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE User_Id=? AND Type=?", array ($this->User->Id, $this->Type))){
				// update
				TDC::db('t2')->Execute("UPDATE Forms SET User_Id=?, Type=? WHERE Id=?", array($this->User_Id, $this->Type, $this->id));
			}
			else{
				// insert
				if (!$this->Date_created){
					$this->Date_created = Date('Y:m:d H:i:s');
				}
				TDC::db('t2')->Execute("INSERT INTO Forms (User_Id, Type, Date_created) VALUES (?,?,?)", array($this->User_Id, $this->Type, $this->Date_created));
				$id = TDC::db('t2')->GetOne("SELECT MAX(Id) as Id FROM Forms");
				return $id;
			}
		}

		public function get_tpl_name($id){
			$form_name = TDC::db('t2')->GetOne("SELECT Description FROM Form_Type WHERE Id=?", array($id));
			$form_name = strtolower(implode('_', explode(' ', $form_name)));
			return "form." . $form_name . ".tpl";
		}


		public function get_avail_user_forms(){
			$sql = "SELECT * FROM Form_Type t1 
							WHERE NOT EXISTS 
							(SELECT Id FROM Forms t2 WHERE t2.Type = t1.Id AND t2.User_Id=?)
							ORDER BY t1.Id ASC";
			$forms = TDC::db('t2')->GetAll($sql, array($this->User_Id));
			foreach ($forms as $key=>$form){
				$slug = strtolower(implode('_', explode(' ', $form['Description'])));
				$output[$key] = array('Id'=>$form['Id'], 'Description'=>$form['Description'], 'Slug'=>$slug);
			}
			return $output;
		}
		public function get_user_forms(){
			$forms = TDC::db('t2')->GetAll("SELECT ft.Id, f.Type, ft.Description FROM Forms f, Form_Type ft WHERE User_Id=? AND f.Type=ft.Id", array($this->User_Id));

			foreach ($forms as $key=>$form){
				$output[$key] = array('Id'=>$form['Id'],'Type'=>$form['Type'], 'Description'=> $form['Description']);
			}
			return $output;
		}

		public function get_user_info($id, $uid){
			if (TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE Id=?", array($id))){
				$user_data = TDC::db('t2')->GetAll("SELECT Location_Id, Description FROM User_Form WHERE Form_Id=? AND User_Id=?", array($id, $uid));
				foreach($user_data as $thing){
					$output[$thing['Location_Id']] = $thing['Description'];
				}
				return $output;
			}
			else{
				return new forms;
			}
		}
	}
