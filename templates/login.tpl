<html>
	<head>
		<title>Login</title>
	</head>
	<body>
		{if $error}
			<div class='error'>{$error}</div>
		{/if}
		<form method='POST'>
			<div>You must log in with your id, not your username.</div>
			<div> Test lawyer account<br>id: 10<br>Password: test</div>
			<div> Test secretary account<br>id: 9<br>Password: test</div>
			<div id='username'>Username: <input name='Id' type='text'></div>
			<div id='password'>Password: <input name='Password' type='password'></div>
			<button type='submit'>Login</button>
		</form>
	</body>
</html>
