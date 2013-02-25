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
<form method='POST' action='{$base_url}/form/6/user/{$User->Id}'>
</br>
<center><h3>BILL OF SALE</h3></center>
<hr>

<p>I, <input placeholder='{$form_field.154}' name='154' {if $user_field.154}value='{$user_field.154}'{/if}>(seller) , in consideration of <input placeholder='{$form_field.155}' name='155' {if $user_field.155}value='{$user_field.155}'{/if}>
dollars ($ <input placeholder='{$form_field.156}' name='156' {if $user_field.156}value='{$user_field.156}'{/if}> ) , do hereby sell, transfer and convey to<input placeholder='{$form_field.157}' name='157' {if $user_field.157}value='{$user_field.157}'{/if}>
(buyer), the following vehicle:</p>

<p>I, the undersigned seller, do sell the above-described vehicle to the buyer for the amount shown
and certify that all of the information provided in this Bill of Sale is true and accurate to the
best of my knowledge.</p>

<p>I, the undersigned buyer, acknowledge receipt of this Bill of Sale and understand there is no 
guarantee or warranty, expressed or implied, with respect to the above-described property. It is
also understood that the above-stated vehicle is sold in "as is" condition.</p>

<p><b>Dated this <input placeholder='{$form_field.158}' name='158' {if $user_field.158}value='{$user_field.158}'{/if}>day of <input placeholder='{$form_field.159}' name='159' {if $user_field.159}value='{$user_field.159}'{/if}>,<input placeholder='{$form_field.160}' name='160' {if $user_field.160}value='{$user_field.160}'{/if}> .</p>

<p>Make: <input placeholder='{$form_field.161}' name='161' {if $user_field.161}value='{$user_field.161}'{/if}></p>
<p>Model: <input placeholder='{$form_field.162}' name='162' {if $user_field.162}value='{$user_field.162}'{/if}></p>
<p>Year: <input placeholder='{$form_field.163}' name='163' {if $user_field.163}value='{$user_field.163}'{/if}></p>
<p>VIN: <input placeholder='{$form_field.164}' name='164' {if $user_field.164}value='{$user_field.164}'{/if}></p>
</p>

<p>Seller Name: <input placeholder='{$form_field.165}' name='165' {if $user_field.165}value='{$user_field.165}'{/if}> (Printed)</p>			
<p>Seller Signature:</b> ____________________________</p><b> 				
<p>Driver's License #: <input placeholder='{$form_field.166}' name='166' {if $user_field.166}value='{$user_field.166}'{/if}> State: <input placeholder='{$form_field.167}' name='167' {if $user_field.167}value='{$user_field.167}'{/if}> </p>		
<p>Street Address:<input placeholder='{$form_field.168}' name='168' {if $user_field.168}value='{$user_field.168}'{/if}>  </p>
<p>City: <input placeholder='{$form_field.169}' name='169' {if $user_field.169}value='{$user_field.169}'{/if}> State: <input placeholder='{$form_field.170}' name='170' {if $user_field.170}value='{$user_field.170}'{/if}> ZIP: <input placeholder='{$form_field.171}' name='171' {if $user_field.171}value='{$user_field.171}'{/if}> </p>
<p>Phone #: <input placeholder='{$form_field.172}' name='172' {if $user_field.172}value='{$user_field.172}'{/if}></p>

<p>Seller Name: <input placeholder='{$form_field.173}' name='173' {if $user_field.173}value='{$user_field.173}'{/if}> (Printed) </p>		
<p>Seller Signature:</b> _____________________________</p><b>			
<p>Driver's License #: <input placeholder='{$form_field.174}' name='174' {if $user_field.174}value='{$user_field.174}'{/if}> State: <input placeholder='{$form_field.175}' name='175' {if $user_field.175}value='{$user_field.175}'{/if}> </p>		
<p>Street Address: <input placeholder='{$form_field.176}' name='176' {if $user_field.176}value='{$user_field.176}'{/if}> </p>
<p>City: <input placeholder='{$form_field.177}' name='177' {if $user_field.177}value='{$user_field.177}'{/if}> State: <input placeholder='{$form_field.178}' name='178' {if $user_field.178}value='{$user_field.178}'{/if}> ZIP: <input placeholder='{$form_field.179}' name='179' {if $user_field.179}value='{$user_field.179}'{/if}> </p>
<p>Phone #: <input placeholder='{$form_field.180}' name='180' {if $user_field.180}value='{$user_field.180}'{/if}> </p>
</b>
<button id="fat-btn" data-loading-text="Saving..." class="btn btn-primary" name='save' >Save File</button>	
</form>
</div>
{include file='footer.tpl'}
