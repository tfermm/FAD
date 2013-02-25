<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Database Project</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link href="{$css_base}/bootstrap.css" rel="stylesheet">
    <link href="{$css_base}/bootstrap-responsive.css" rel="stylesheet">
	<!--<link href="css/global.css" rel="stylesheet">-->
  </head>
    <script src="{$js_base}/jquery.min.js"></script>
    <script src="{$js_base}/bootstrap.js"></script>
<style>
/* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
      padding-bottom: 40px;
      color: #0F0F0F;
			height:100%;
    }

	.navbar .brand {
	margin-top:15px;
	font-size:18px;
	}
		.navbar .nav {
		margin: 10px 0 0;

		}


    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
      position: relative;
      z-index: 10;
      margin-top: 20px;
      margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
    }

    /* Remove border and change up box shadow for more contrast */
    .navbar .navbar-inner {
      border: 0;
      -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
         -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
              box-shadow: 0 2px 10px rgba(0,0,0,.25);
    }

    /* Downsize the brand/project name a bit */
    .navbar .brand {
      font-size: 16px;
      font-weight: bold;
    }

    /* Navbar links: increase padding for taller navbar */
    .navbar .nav > li > a {
      padding: 15px 20px;
    }

    /* Offset the responsive button for proper vertical alignment */
    .navbar .btn-navbar {
      margin-top: 10px;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
      margin-bottom: 60px;
    }

    .carousel .container {
      position: absolute;
      right: 0;
      bottom: 0;
      left: 0;
    }

    .carousel-control {
      background-color: transparent;
      border: 0;
      font-size: 120px;
      margin-top: 0;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
    }

    .carousel .item {
      height: 500px;
    }
    .carousel img {
      min-width: 100%;
      height: 500px;
    }
    .carousel-caption h1,
    .carousel-caption .lead {
      margin: 0;
      line-height: 1.25;
      color: #fff;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
    }
    .carousel-caption .btn {
      margin-top: 10px;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
    .marketing .span4 {
      text-align: center;
    }
    .marketing h2 {
      font-weight: normal;
    }
    .marketing .span4 p {
      margin-left: 10px;
      margin-right: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }
    .featurette {
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (max-width: 979px) {

      .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
      }
      .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
      }

      .carousel .item {
        height: 500px;
      }
      .carousel img {
        width: auto;
        height: 500px;
      }

      .featurette {
        height: auto;
        padding: 0;
      }
      .featurette-image.pull-left,
      .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
      }
    }


    @media (max-width: 767px) {

      .navbar-inner {
        margin: -20px;
      }

      .carousel {
        margin-left: -20px;
        margin-right: -20px;
      }
      .carousel .container {

      }
      .carousel .item {
        height: 300px;
      }
      .carousel img {
        height: 300px;
      }
      .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-bottom: 40px;
      }
      .carousel-caption h1 {
        font-size: 30px;
      }
      .carousel-caption .lead,
      .carousel-caption .btn {
        font-size: 18px;
      }

      .marketing .span4 + .span4 {
        margin-top: 40px;
      }

      .featurette-heading {
        font-size: 30px;
      }
      .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
      }

    }
    </style>
  <body>
    <!-- NAVBAR
    ================================================== -->
    <!-- Wrap the .navbar in .container to center it on the page and provide easy way to target it with .navbar-wrapper. -->
<div class="navbar navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand text-info">Law Offices of F.A.D</a>
          <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
          <div class="nav-collapse collapse">    
<ul class="nav">
	<li class = "divider-vertical"></li>
	<li><a href='{$base_url}'>Home</a></li>
	<li class = "divider-vertical"></li>
	<li><a href='{$base_url}/about'>About</a></li>
	<li class = "divider-vertical"></li> 
	<li><a href='{$base_url}/contact'>Contact</a></li>
	<li class = "divider-vertical"></li>

	{if $User->User_Name}
		<li> <a href='{$base_url}/profile'>Profile</a></li>

		{if $User->User_level == 3}
			<li class="divider-vertical"></li>
			<li><a href='{$base_url}/admin'>Admin</a></li>
		{/if}
	{/if}
</ul>

<ul class="nav pull-right">
	{if !$User->User_Name}
		<div class = "userinfo">
			<li>
				<form class="form-inline" method='POST' action='{$base_url}/'>
					<input type="text" name='Id' class="input-small" placeholder="Account Name">
					<input type="password" name='Password' class="input-small" placeholder="Password">
					<button type="submit" class="btn">Sign in</button>
					</form>
				</li>
			</div>
		</ul>
	{/if}

<ul class = "nav pull-right">
		<li><a href='{$base_url}/profile'>{$User->User_Name}</a></li>
		{if $User->User_Name}
			<li class="divider-vertical"></li>
			<li> <a href='{$base_url}/logout'>Logout</a></li>
		{/if}
	</ul>
				</div>
		</div>
	</div>
	</div>
<div id = "space"></div>
