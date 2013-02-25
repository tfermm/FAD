{include file='header.tpl'}
<style>
h3 {
margin-top:-1em;
margin-left:-1em;
font-weight:normal;
font-family:arial;
line-height:20px;
}

					.hero-unit {
					font-size:14px;
					}

</style>
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
							<li class="nav-header">About Us</li>
          	    	<li><a href='{$base_url}/about'>Firm Overview</a></li>
            	  	<li><a href='{$base_url}/about/area'>Area's of Practice</a></li>
              	<li class="nav-header">Attorneys</li>
             			 <li><a href="#garyModal" data-toggle="modal">Gary Ameden</a></li>
             			 <li><a href="#ryleyModal" data-toggle="modal">Ryley Ameden</a></li>
             			 <li><a href="#tylerModal" data-toggle="modal" >Tyler Ferm</a></li>
             			 <li><a href="#alexisModal" data-toggle="modal" >Alexis Dupree</a></li>
							  </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <h3 class= "text-info">F.A.D's Area of Practice</h3>
						 <hr>
						<div class="bs-docs-example">
            <div class="tabbable tabs-left">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#realestate" data-toggle="tab" data-type="1">Real Estate</a></li>
                <li class=""><a href="#personalinjury" data-toggle="tab" data-type="2">Personal Injury</a></li>
                <li class=""><a href="#mortgageF" data-toggle="tab" data-type="3">Mortgage Finance</a></li>
                <li class=""><a href="#mortgageFor" data-toggle="tab" data-type="4">Foreclosure</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="realestate">
							 <p>{$area_decs.1}</p>
							 </div>
                <div class="tab-pane" id="personalinjury">
							 <p>{$area_decs.2}</p>
								</div>
                <div class="tab-pane" id="mortgageF">
							 <p>{$area_decs.3}</p>
                </div>
                <div class="tab-pane" id="mortgageFor">
							 <p>{$area_decs.4}</p>
								 </div>  
						</div>
						</div>
            </div> <!-- /tabbable -->
						



						 <!--Gary Ameden Modal -->
						 <div id="garyModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-header">
							     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
									     <h3 id="myModalLabel">Gary Ameden</h3>
											</div>
												<div class="modal-body">
													<div class="thumbnail">
														 <img src='{$img_base}/gary.jpg' alt="">
															<div class="caption">
														 <h3>About me</h3>
															<p> My name is Gary Ameden. I am Ryley's dad, FEAR ME!</p>
																</div>
															</div>
														 </div>
													<div class="modal-footer">
														<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
													 </div>
												 </div>
												 
							<!--Ryley Ameden Modal -->
						 <div id="ryleyModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-header">
							     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
									     <h3 id="myModalLabel">Ryley Ameden</h3>
											</div>
												<div class="modal-body">
													<div class="thumbnail">
														 <img src='{$img_base}/Ryley.jpg' alt="">
															<div class="caption">
														 <h3>About me</h3>
															<p> My name is Ryley Ameden. Gary is my dad, FEAR HIM!</p>
																</div>
															</div>
														 </div>
													<div class="modal-footer">
														<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
													 </div>
												 </div>
												 
												 
							<!--Tyler Ferm  Modal -->
						 <div id="tylerModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-header">
							     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
									     <h3 id="myModalLabel">Tyler Ferm</h3>
											</div>
												<div class="modal-body">
													<div class="thumbnail">
														 <img src='{$img_base}/Tyler.jpg' alt="">
															<div class="caption">
														 <h3>About me</h3>
															<p> My name is T-Ferm. I love long walks on the beach.</p>
																</div>
															</div>
														 </div>
													<div class="modal-footer">
														<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
													 </div>
												 </div>
												 
							<!--Aleixs Dupree Modal -->
						 <div id="alexisModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						   <div class="modal-header">
							     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
									     <h3 id="myModalLabel">Alexis Dupree</h3>
											</div>
												<div class="modal-body">
													<div class="thumbnail">
														 <img src='{$img_base}/alexis.jpg' alt="">
															<div class="caption">
														 <h3>About me</h3>
															<p> My name is Alexis Dupree. I have no idea how I got to work with these fools.</p>
																</div>
															</div>
														 </div>
													<div class="modal-footer">
														<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
													 </div>
												 </div>
          </div>   
       </div>
</div>




{include file = 'footer.tpl'}

