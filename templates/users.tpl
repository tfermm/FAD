{include file='header.tpl'}
	<ul>
		{foreach from=$users item=user}
			<li><a href='edit/{$user.Id}'>{$user.User_Name}</a></li>	
		{/foreach}
	</ul>
{include file='footer.tpl'}
