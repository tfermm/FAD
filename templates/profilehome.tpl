{include file='header.tpl'}
{include file='profile.tpl'}
<script>
	$(function(){
		var base_url = "{$base_url}";
		var user_id = "{$User->Id}";
		$(document).on('click', '.create-file', function(){
			var form_id = $(".active").find("a").data("type");
			var link = base_url + "/form/" + form_id + "/user/" + user_id;
			console.log(link);
			window.location.href = link;
		});
	});

</script>
{include file='footer.tpl'}

