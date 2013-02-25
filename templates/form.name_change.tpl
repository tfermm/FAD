{include file='header.tpl'}
<style>
.hero-unit {
padding: 5px;
padding-left:40px;
padding-right:40px;
margin-bottom: 30px;
font-size: 16px;
margin-left: 1.5em;
margin-right: 1.5em;
font-weight: 100;
line-height: 25px;
color: inherit;
background-color: #EEE;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
}
input, textarea, .uneditable-input {
width: 150px;
}

.article {
margin-bottom:-15px;

}

button.btn, input[type="submit"].btn{
margin-top:1.5em;

}
</style>

<div class="hero-unit">
<form method='POST' action='{$base_url}/form/3/user/{$User->Id}'>
</br>
<center><h3>Deed Changing Surname Form </h3></center>
<hr>
<p>By this deed I, the undersigned <u><input type='text' placeholder='{$form_field.101}' name='101'{if $user_field.101}value='{$user_field.101}'{/if} ></u> if etc., now lately called <u><input type='text' placeholder='{$form_field.102}' name='102'{if $user_field.102}value='{$user_field.102}'{/if} ></u> employed as <u><input type='text' placeholder='{$form_field.103}' name='103'{if $user_field.103}value='{$user_field.103}'{/if} ></u> at the time by the Government concerned at <u><input type='text' placeholder='{$form_field.104}' name='104'{if $user_field.104}value='{$user_field.104}'{/if} ></u> place where employed in the <u><input type='text' placeholder='{$form_field.105}' name='105'{if $user_field.105}value='{$user_field.105}'{/if} ></u> of the Government of Orissa, do hereby. </p>

<p><b>1.</b> For and on behalf of myself and my wife and children and remoter issue I wholly enounce relinquish and abandon the use of my former surname of <u><input type='text' placeholder='{$form_field.106}' name='106'{if $user_field.106}value='{$user_field.106}'{/if} ></u> and in place thereof do assume from the date hereof the surname of <u><input type='text' placeholder='{$form_field.107}' name='107'{if $user_field.107}value='{$user_field.107}'{/if} ></u> known and distinguished not by my former surname of <u><input type='text' placeholder='{$form_field.108}' name='108'{if $user_field.108}value='{$user_field.108}'{/if} ></u> but by my assumed surname of <u><input type='text' placeholder='{$form_field.109}' name='109'{if $user_field.109}value='{$user_field.109}'{/if} ></u> . </p>

<p><b>2.</b> For the purpose of evidencing such my determination I hereby declare that I shall at all time hereafter in all records, deeds and writings and in all proceeding, dealing and transaction private as well as public and upon all occasions whatsoever use and sign the name of <u><input type='text' placeholder='{$form_field.110}' name='110'{if $user_field.110}value='{$user_field.110}'{/if} ></u> as my surname in place of and in substitution of my former name of <u><input type='text' placeholder='{$form_field.111}' name='111'{if $user_field.111}value='{$user_field.111}'{/if} ></u> . </p>

<p><b>3.</b> I expressly authorise and request all persons at all times designate and address me and my wife and children and remoter issue by such assume surname of <u><input type='text' placeholder='{$form_field.112}' name='112'{if $user_field.112}value='{$user_field.112}'{/if} ></u> accordingly. In witness of where I have hereunto subscribed by my former and adopted name of <u><input type='text' placeholder='{$form_field.113}' name='113'{if $user_field.113}value='{$user_field.113}'{/if} ></u> and affixed my seal this <u><input type='text' placeholder='{$form_field.114}' name='114'{if $user_field.114}value='{$user_field.114}'{/if} ></u> day of signed sealed, and deliver by the above name. </p>
<p> <u><input type='text' placeholder='{$form_field.115}' name='115'{if $user_field.115}value='{$user_field.115}'{/if} ></u><b> Old Name</b> </p>

<p> <u><input type='text' placeholder='{$form_field.116}' name='116'{if $user_field.116}value='{$user_field.116}'{/if} ></u><b> New Name</b> </p>

<p>Two Witnesses </p>

<p><b>1.</b> <u><input type='text' placeholder='{$form_field.117}' name='117'{if $user_field.117}value='{$user_field.117}'{/if} ></u>  </p>
<p><b>2.</b> <u><input type='text' placeholder='{$form_field.118}' name='118'{if $user_field.118}value='{$user_field.118}'{/if} ></u>  </p>

<button id="fat-btn" data-loading-text="Saving..." class="btn btn-primary" name='save' >Save File</button>	

</form>
</div>
{include file='footer.tpl'}
