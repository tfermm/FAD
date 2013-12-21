<?php
require_once "web/autoload.php";
require_once "includes/tdc_object.php";
require_once "includes/calendar.php";
require_once "includes/user.php";
require_once "includes/users.php";
require_once "includes/forms.php";
require_once "includes/form.php";
require_once "includes/appointments.php"; 

/*
 * routing is provided via klein.php
 * see more at https://github.com/chriso/klein.php
 *
 * Displaying is being aided by smarty
 * see more about smarty at http://www.smarty.net/
 *
 * Database connections are aided by adodb
 * more at http://adodb.sourceforge.net/
 *
 */

session_start();
//
/*************** GET ****************/
//
respond( '[*:url]', function( $request, $response, $app ) {
	$exceptions = array(
		'/~tlferm/database/project',
		'/~tlferm/database/project/',
		'/~tlferm/database/project/about',
		'/~tlferm/database/project/about/',
		'/~tlferm/database/project/about/area',
		'/~tlferm/database/project/about/area/',
		'/~tlferm/database/project/contact',
		'/~tlferm/database/project/contact/',
		'/~tlferm/database/project/contact/success',
		'/~tlferm/database/project/contact/success/'
	);
	if (!$_SESSION['logedIn'] && !in_array($request->uri(), $exceptions)){
		$response->redirect('/~tlferm/database/project');
	}	
	$_SESSION['url'] = $request->param('url');
	$app->tpl = new TDCSmarty();
	$now = date('Y-m-d');
	$app->tpl->assign('now', $now);
	$app->tpl->assign('news', TDC::my_news());
	$app->tpl->assign('css_base', '/~tlferm/database/project/css');
	$app->tpl->assign('js_base', '/~tlferm/database/project/js');
	$app->tpl->assign('img_base', '/~tlferm/database/project/img');
	$app->tpl->assign('base_url', '/~tlferm/database/project');
	if ($_SESSION['User_Name']){
		$app->tpl->assign('User', user::get($_SESSION['Id']));
	}
});

respond( 'GET', '/?', function( $request, $response, $app ) {
	$cal = calendar::get($_SESSION['Id']);
	$app->tpl->display('index.tpl');
});

respond( 'GET', '/about/?', function( $request, $response, $app ) {
	$app->tpl->assign('area_decs', TDC::area_decs());
	$app->tpl->display('about.tpl');
});

respond( 'GET', '/about/area/?', function( $request, $response, $app ) {
	$app->tpl->assign('area_decs', TDC::area_decs());
	$app->tpl->display('aboutarea.tpl');
});

respond( 'GET', '/admin/?', function( $request, $response, $app ) {

	if ($_SESSION['User_level'] == 3){
		$app->tpl->display('admin.tpl');
	}
	else{
		$response->redirect('.');
	}
});

respond( 'GET', '/admin/user/edit/[:uid]?/?', function( $request, $response, $app ) {
	$uid = $request->param('uid');
	$users = users::get();
	$app->tpl->assign('users', $users);
	if (!$uid){
		$response->redirect('/~tlferm/database/project/admin/user/edit/new');
	}
	// edit that user
	$user = user::get($uid);	
	$form_names = TDC::form_names();
	$app->tpl->assign('form_names', $form_names);
	$app->tpl->assign('User_Id', $uid);
	$app->tpl->assign('user', $user);
	$app->tpl->display('user.tpl');

});

respond( 'GET', '/appointments/add/?', function( $request, $response, $app ) {
	$users = TDC::get_users();
	$app->tpl->assign('users', $users);
	$app->tpl->display('appointments.tpl');
});

respond( 'GET', '/calendar/date/[:date]/?', function( $request, $response, $app ) {
	$date = $request->param('date');
	$calendar = new calendar;
	$time = strtotime($date);
	$nextday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time) + 1 ,date("Y", $time))) . ' 00:00:00';
	$prevday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time) - 1 ,date("Y", $time))) . ' 00:00:00';
	$calendar->appointments($date);
	$app->tpl->assign('date', $date);
	$app->tpl->assign('next_day', $nextday);
	$app->tpl->assign('prev_day', $prevday);
	$app->tpl->assign('appointments', $calendar->appointments($date));
	$app->tpl->display('calendar.tpl');
});

respond( 'GET', '/calendar/date/[:date]/user/[:uid]/?', function( $request, $response, $app ) {
	$uid = $request->param('uid');
	$date = $request->param('date');
	$time = strtotime($date);
	$nextday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time) + 1 ,date("Y", $time))) . ' 00:00:00';
	$prevday = date("Y-m-d", mktime(0,0,0,date("n", $time),date("j",$time) - 1 ,date("Y", $time))) . ' 00:00:00';
	$calendar = calendar::get_user_cal($uid);
	$app->tpl->assign('date', $date);
	$app->tpl->assign('next_day', $nextday);
	$app->tpl->assign('prev_day', $prevday);
	$app->tpl->assign('appointments', $calendar->user_appointments($uid, $date));
	$app->tpl->display('calendar.tpl');
});

respond( 'GET', '/contact/?', function( $request, $response, $app ) {
	$app->tpl->display('contact.tpl');
});

respond( 'GET', '/contact/success/?', function( $request, $response, $app ) {
	$app->tpl->display('emailsuc.tpl');
});

respond( 'GET', '/form/[:form_id]/user/[:uid]/?', function( $request, $response, $app ) {
	$form_id = $request->param('form_id');
	$user_id = $request->param('uid');
	$form = new forms(user::get($user_id));
	$data = $form->get_data($form_id);	
	$user_data = $form->get_user_info($form_id, $user_id);	
	$app->tpl->assign('user_field', $user_data);
	$app->tpl->assign('form_field', $data);
	$tpl = forms::get_tpl_name($form_id);
	$app->tpl->display($tpl);
});

respond( 'GET', '/logout/?', function( $request, $response, $app ) {
	session_destroy();
	$response->redirect($request->uri());
});

respond( 'GET', '/profile/?', function( $request, $response, $app ) {
	$user = user::get($_SESSION['Id']);
	$app->tpl->assign('current_forms',	$user->forms()->get_user_forms());
	$app->tpl->display('profilehome.tpl');
});

respond( 'GET', '/profile/form/new/?', function( $request, $response, $app ) {
	$user = user::get($_SESSION['Id']);
	$app->tpl->assign('forms_decs',	$user->forms()->get_forms_desc());
	$app->tpl->assign('current_forms',	$user->forms()->get_user_forms());
	$app->tpl->assign('avail_forms',	$user->forms()->get_avail_user_forms());
	$app->tpl->display('profilehome.tpl');
});

//
/*************** POST ****************/
//
respond( 'POST', '/?', function( $request, $response, $app ) {
	$creds = TDC::db('t2')->GetAll("SELECT Id, User_Name, Password, Lawyer_Id, User_level FROM User WHERE Id=?", array($_POST['Id']));
	if (!$creds){
		$creds = TDC::db('t2')->GetAll("SELECT Id, User_Name, Password, Lawyer_Id, User_level FROM User WHERE User_Name=?", array($_POST['Id']));
	}
	if ($creds[0]['Password'] == $_POST['Password'] && $_POST['Id'] != null){
		$_SESSION['logedIn'] = true;
		$_SESSION['Id'] = $creds[0]['Id'];
		$_SESSION['User_Name'] = $creds[0]['User_Name'];
		$_SESSION['User_level'] = $creds[0]['User_level'];
		$_SESSION['User_level'] = $creds[0]['User_level'];
		$_SESSION['Lawyer_Id'] = $creds[0]['Lawyer_Id'];
		$response->back();
	}	
	else{
		$response->back();
	}
});

respond( 'POST', '/admin/user/edit/[:uid]/?', function( $request, $response, $app ) {
	$uid = $request->param('uid');
	if (!isset($_POST['new'])){
		// saving the form
		$user = user::get($uid);
		// setting the things we want to save
		$user->User_Name = $_POST['User_Name'];
		$user->Lawyer_Id = $_POST['Lawyer_Id'];
		$user->User_level = $_POST['User_level'];
		$user->Password = $_POST['Password'];
		$user->save();
	}
	else{
		// adding a new user
		$user = new user;
			
		$user->User_Name = $_POST['User_Name'];
		$user->Lawyer_Id = $_POST['Lawyer_Id'];
		$user->User_level = $_POST['User_level'];
		$user->Password = $_POST['Password'];
		if ($user->User_Name && $user->Password && $user->Lawyer_Id && $user->User_level){
			$user->save();
		}
	}
	$response->redirect($request->uri());
});

respond( 'POST', '/appointments/add/?', function( $request, $response, $app ) {

	$User_Id = $_POST['User_Id'];
	$start_time = $_POST['start_time'];
	$end_time = $_POST['end_time'];
	
	if (!TDC::db('t2')->GetOne("SELECT Id FROM Calendar WHERE User_Id=?", array($User_Id))){
		TDC::db('t2')->Execute("INSERT INTO Calendar (User_Id) VALUES (?)", array($User_Id));	
	}

	$calendar = calendar::get_user_cal($User_Id); 
	$appoint = new appointments(array('Cal_Id'=>$calendar->Id, 'Apt_start'=>$start_time, 'Apt_end'=>$end_time));
	$saved = $appoint->save();
	if (!$saved){
		$users = TDC::get_users();
		$app->tpl->assign('users', $users);
		$app->tpl->assign('error', 'Error, there is an appointment during that time, please try again.');
		$app->tpl->display('appointments.tpl');
	}
	else{
		$response->redirect('/~tlferm/database/project/profile');
	}
});

respond( 'POST', '/appointments/delete/?', function( $request, $response, $app ) {
	foreach ($_POST as $key=>$value){
		$appointment = new appointments(array('Id'=>$key));
		$appointment->delete();
	}
	$response->back();
});

respond( 'POST', '/contact/?', function( $request, $response, $app ) {

	$emailSubject = 'F.A.D';
	$webMaster = 'rcameden@mail.plymouth.edu';
	
	$email = $_POST ['email'];
    $name = $_POST ['name'];
    $subject = $_POST ['subject'];
    $message = $_POST ['message'];
    
	$body = <<<EOD
<br><hr><br>
Email: $email <br>
Name: $name <br>
Subject $subject <br>
Message $message <br>
EOD;


	$headers = "From: $email\r\n";
	$headers .= "Content-type: text/html\r\n";
	$success = mail($webMaster, $email, $body, $headers);	
	
	$response->redirect('/~tlferm/database/project/contact/success');
});

respond( 'POST', '/form/[:form_id]/user/[:uid]/?', function( $request, $response, $app ) {
	$uid = $request->param('uid');
	$form_id = $request->param('form_id');
	if (!TDC::db('t2')->GetOne("SELECT Id FROM Forms WHERE User_Id=? AND Type=?", array($uid, $form_id))){
		TDC::db('t2')->Execute("INSERT INTO Forms (User_Id, Type) VALUES (?,?)", array($uid, $form_id));
	}
	if (isset($_POST['save'])){
		// save the things
		foreach ($_POST as $key => $value){
			if ($key != 'save'){
				if (TDC::db('t2')->GetOne("SELECT Id FROM User_Form WHERE Location_Id=? AND User_Id=?", array($key, $uid))){
					if ($value != ""){
						TDC::db('t2')->Execute("UPDATE User_Form SET Description=? WHERE Location_Id=? AND User_Id=?", array($value, $key, $uid));
					}
				}
				else{
					if ($value != ""){
						TDC::db('t2')->Execute("INSERT INTO User_Form (User_Id, Form_Id, Location_Id, Description) VALUES(?,?,?,?)", array($uid, $form_id, $key, $value));
					}
				}
			}
		}		
	}
	$response->redirect('/~tlferm/database/project/profile');
});
$app_routes = array();
/*
foreach( $app_routes as $base ) {
	with( "/{$base}", $GLOBALS['BASE_DIR'] . "/routes/{$base}.php" );
}//end foreach
 */
dispatch( $_SERVER['PATH_INFO'] );
