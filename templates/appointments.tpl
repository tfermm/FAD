{include file='header.tpl'}
<link rel="stylesheet" type="text/css" href="{$css_base}/anytime.css" />
<script src="{$js_base}/anytime.js"></script>
{literal}
<script>
	$(function(){
		AnyTime.picker( "start_time",
			{ format: "%y-%m-%d %H:%i:%s", firstDOW: 1 } );
		AnyTime.picker( "end_time",
			{ format: "%y-%m-%d %H:%i:%s", firstDOW: 1 } );

	});
</script>
<style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      .form-signin {
        max-width: 700px;
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
{/literal}
<body>
	<form form class="form-signin" method='POST' action='{$base_url}/appointments/add'>
<div class="container">
	<center>	
		<h2 class="form-signin-heading">Add Appointments</h2><hr>
		{if $error}
			<div>{$error}</div>
		{/if}
	</center>
<div class = "bs-docs-example">
		<table class="table">
			<thead>
				<tr>
					<th>User</th>
					<th>Start Time</th>
					<th>End Time</th>
				</tr>		
			</thead>

			<tbody>
				<tr class="info">
					<td><select name='User_Id'>
							{foreach from=$users item=user}
								<option value='{$user.Id}'>{$user.User_Name}</option>
							{/foreach}
						</select>
					</td>

					<td><input required name='start_time' id='start_time'></td>
					<td><input required name='end_time' id='end_time'></td>
				</tr>
			</tbody>
</table>
</div>
</form>
<button class="btn btn-primary" type="submit">New Appointment</button>
</div>
{include file='footer.tpl'}
