{include file='header.tpl'}
<style>
#space {
margin-top:75px;
}
.input-xxlarge{
width:650px;
}
.hero-unit {
padding: 60px;
margin-bottom: 30px;
margin-left: 1.5em;
margin-right: -1.5em;
font-size: 18px;
font-weight: 200;
line-height: 30px;
color: inherit;
background-color: #EEE;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
}
address {
display: block;
margin-bottom: 0px;
font-style: normal;
line-height: 20px;
}
.span6 {
width: 750px;
}
.span5 {
padding-left:2em;
width:750px;
}
form {
margin-left: -2.5em;
margin-top:-2em;
margin-bottom:-2em;
}
.well{
padding:15px;
}
.container1 {
margin-left:5%;
margin-right:5%;

}
</style>
<div class = "container-fluid">
	<div class = "row-fluid">
		<div class= "span7">
			<div class = "hero-unit">
				<h2>Contact us at F.A.D</h2>
					<p class="tagline"> Thank you for visiting The Law Office of F.A.D's website. If you would like to contact us please fill out the form below.</p>
		</div> <!--end hero unit -->
	</div>	
	
	<div class = "span4">	
		<div class = "hero-unit">
		<address>
  <strong>Law Office of F.A.D</strong><br>
  	123 Awesome Ave, Suite 690<br>
  	Plymouth, NH 03264<br>
  	
		<abbr title="Phone">P:</abbr> (603)867-5309
	</address>
 	<address>
  	<strong>Mr. Lawyer</strong><br>
  	<a href="mailto:#">mrlawyer@fad.com</a>
	</address> 
				 </div>
			</div>
	</div>	
<div class= "container1">
<section class= "span6">		
	<div class = "hero-unit">
		<form method="POST">
			
			<div class="control-group">
			<label class = "control-label" for="inputEmail"><i class = "icon-user" ></i><b>Full Name:</b></label>
				<div class="controls controls-row">
					<input type="text" class = "input-xxlarge" id="name" name="name" required placeholder="Enter..." >
					</div>
				</div>
				
			<div class="control-group">
			<label class = "control-label" for="inputEmail"><i class = "icon-envelope" ></i><b>Email:</b></label>
				<div class="controls">
					<input type="text" class = "input-xxlarge" id="inputEmail" name="email" required placeholder="you@yourdomain.com" >
					</div>
				</div>
				
			<div class="control-group">
			<label class = "control-label" for="inputEmail"><i class = "icon-pencil" ></i><b>Subject:</b></label>
				<div class="controls">
					<input type="text" class = "input-xxlarge" id="inputSubject" name="subject" required placeholder="Text..." >
					</div>
				</div>
				
			<div class="control-group">
			<label class = "control-label" for="inputEmail"><i class = "icon-pencil" ></i><b>Body</b></label>
				<div class="control">
					<textarea rows="6" class ="input-xxlarge" name="message" required placeholder="Text..."></textarea>
					</div>
				</div>

			<div class = "control-group">
			<div class = "controls">
				<button type = "submit" class= "btn btn-primary"> Send Message </button>
				</div>
			</form>
		</section><!--end section-->

		<section class= "span5">
			<div class = "well">
			<iframe width="725" height="425" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Plymouth,+NH&amp;aq=0&amp;oq=plymouth&amp;sll=43.744278,-71.721498&amp;sspn=0.183292,0.342293&amp;ie=UTF8&amp;hq=&amp;hnear=Plymouth,+Grafton,+New+Hampshire&amp;t=m&amp;z=12&amp;iwloc=A&amp;output=embed"></iframe>
			
				</div>
			</section><!--end section-->
		</div> <!--end row-->
	</div> <!--end cont-->
{include file='footer.tpl'}

