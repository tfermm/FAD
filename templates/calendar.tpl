{include file =  'header.tpl'}
<style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      .form-signin {
        max-width: 500px;
        padding: 19px 29px 29px;
        margin: 0 auto 40px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
  <body>

    <div class="container">
      <form class="form-signin" method = "POST" action='{$base_url}/appointments/delete'>
      <center>
			<h2 class="form-signin-heading">Appointments</h2>
			<div class="btn-group" data-toggle="buttons-radio">
			{if $User->User_level != 1}
				<a href='{$base_url}/calendar/date/{$prev_day}' class="btn btn-primary">Previous Day</a>
				<a href='{$base_url}/calendar/date/{$next_day}' class="btn btn-primary ">Next Day</a>
			{else}
				<a href='{$base_url}/calendar/date/{$prev_day}/user/{$User->Id}' class="btn btn-primary">Previous Day</a>
				<a href='{$base_url}/calendar/date/{$next_day}/user/{$User->Id}' class="btn btn-primary ">Next Day</a>
			{/if}
		</div>
		</center>
      <div class="bs-docs-example">
					 <table class="table">
              <thead>
                <tr>
                  <th>Selected</th>
                  <th>Lawyer</th>
                  <th>Customer</th>
                  <th>Date (yyyy-mm-dd)</th>
                  <th>Start Time</th>
                  <th>End Time</th>
                </tr>
              </thead>
              <tbody>
								{foreach from=$appointments item=appointment} 
									<tr class="info">
										<td><input type="checkbox" name="{$appointment->Id}"></td>
										<td>{$appointment->calendar()->user()->get_lawyer()}</td>
										<td>{$appointment->calendar()->user()->User_Name}</td>
										<td>{$appointment->date} </td>
										<td>{$appointment->start_time}</td>
										<td>{$appointment->end_time}</td>
									</tr>
								{/foreach}
              </tbody>
            </table>
				{if $User->User_level != 1}
					 <button class="btn btn-danger" type="submit">Delete Appointment</button>
					 <a href='{$base_url}/appointments/add' class="btn btn-primary" type="submit">New Appointment</a>
				{/if}

				 </div>  
      </form>
	</div>

{include file='footer.tpl'}
