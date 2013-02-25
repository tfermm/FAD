{include file =  'header.tpl'}
<style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
      }

      .form-signin {
        max-width: 350px;
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
      <form class="form-signin" method = "POST" >
        <h2 class="form-signin-heading">Edit User Information</h2>
	<div class="btn-group">
  		<a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">User <span class="caret"></span></a>
  			<ul class="dropdown-menu">
			<li name= "New_User"><a href='new'> New User</li></a>
			<li class="divider"></li>
		{foreach from = $users item = user1}
			<li name="Existing_User"><a href='{$user1.Id}'>{$user1.User_Name}</a></li>	
		{/foreach}
  </ul>
</div>
       <p>Full Name:</p><input type="text" class="input-block-level" name='User_Name' autocomplete="off" {if $user->User_Name and $User_Id != 'new'}value='{$user->User_Name}'{/if} placeholder="Full Name"></input>
			 <p>Password:</p><input type="password" class="input-block-level" name = 'Password' autocomplete="off" {if $user->Password}value='{$user->Password}'{/if} placeholder="Password"> </input>
			 <p>Lawyer:</p><input type="text" class="input-block-level" name  = 'Lawyer_Id' {if $user->Lawyer_Id}value='{$user->Lawyer_Id}'{/if} placeholder="Lawyer Id"> </input>
			 <p>User Level:</p><input type="text" class="input-block-level" name = 'User_level' {if $user->User_level}value='{$user->User_level}'{/if} placeholder="User_level"> </input>
        <br>
        <button class="btn btn-inverse" {if $User_Id == 'new'}name='new' {/if}type="submit">Save</button>
      </form>

    </div> <!-- /container -->

{include file='footer.tpl'}
