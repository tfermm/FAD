<?php

	class tdc_object{
		public function __construct($input = null){
			if ($input){
				foreach ($input as $key => $value){
					$this->$key = $value;
				}
				if ($this->Type){
					$this->form_name = TDC::db('t2')->GetOne("SELECT Description FROM Form_Type WHERE Id=?", array($this->Type));
				}
			}
		}


	}
