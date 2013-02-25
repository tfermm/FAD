<style>
.tabbable {
margin-top:-2em;
margin-left:-1em;
}
</style>

<div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
							<ul class="nav nav-list">
							<li class="nav-header">Account</li>
              <li><a href="#"><b>Account Name:</b> {$User->User_Name}</a></li>
              <li><a href="#"><b>Account Type:</b> {$User->User_Type()}</a></li>
              <li><a href="#"><b>Lawyer:</b> {$User->get_lawyer()}</a></li>
              <li><a href="#"><b>User Id:</b> {$User->Id}</a></li>
						 {if $User->User_level != 1}
								<li><a href="{$base_url}/calendar/date/{$now}">Appointments</a></li>
							{else}
								<li><a href="{$base_url}/calendar/date/{$now}/user/{$User->Id}">Calendar</a></li>
							{/if}
							<li class="nav-header">My Files</li>
              <li><a href='{$base_url}/profile/form/new'>Create File </a></li>
             <li class = "divider"></li>
							{foreach from=$current_forms item=form}
							<li name= "My_Forms"><a href='{$base_url}/form/{$form.Id}/user/{$User->Id}'>{$form.Description}</a></li>	
							{/foreach}
						 {if $User->User_level == 3}
							<li class="nav-header">Admin</li>
              <li><a href='{$base_url}/admin/user/edit'>User Accounts</a></li>
							{/if}
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
					{if !$avail_forms}
            <h3>Law Office of F.A.D</h3>
						 
							<p>Welcome and Thank you for choosing the Law Office of F.A.D</p>
							<p>We are here to support you in any legal matter we can.</p>
            <p>For any questions or comments please visit our <a href = '{$base_url}/contact'>Contact</a> page. </p>
					{else}
					<style>
					.hero-unit {
					font-size:14px;
					}
					.btn {
					margin-left:13em;

					}
					</style>
			
					<div class="bs-docs-example">
            <div class="tabbable tabs-left">
              <ul class="nav nav-tabs">
								{assign var="ct" value=1}
								{foreach from=$avail_forms item=form}
									{if $ct == 1}
										<li class="active"><a href="#{$form.Slug}" data-toggle="tab" data-type="{$form.Id}">{$form.Description}</a></li>
										{assign var="ct" value=2}
									{else}
										<li class=""><a href="#{$form.Slug}" data-toggle="tab" data-type="{$form.Id}">{$form.Description}</a></li>
							{/if}
								{/foreach}
              </ul>
              <div class="tab-content">
								{assign var="ct" value='1'}
								{foreach from=$avail_forms item=form}
								{assign var="num" value=$form.Id}
									{if $ct == '1'}
										<div class="tab-pane active" id="{$form.Slug}">
										{assign var="ct" value='2'}
									{else}
										<div class="tab-pane" id="{$form.Slug}">
									{/if}
										<p>{$forms_decs.$num}</p>
									</div>
								{/foreach}
						</div>
            </div> <!-- /tabbable -->
              		 <button class="btn btn-static-bottom btn-primary create-file" type="button">Create File</button>
          </div>	
				
					{/if}
          </div>   
          </div>
</div>
