<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Benjamin X. Lin | Starwavelin's Cabin, A Web/Mobile Developer's Home</title>
<link rel="icon" href="images/icons/icon-surn.png" type="image/png" />

<!-- bootstrap-3.3.4 css -->
<link rel="stylesheet" href="res/bootstrap-3.3.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="res/bootstrap-3.3.4/css/bootstrap-theme.min.css" />

<!-- owl-carousel css -->
<link rel="stylesheet" href="res/js/owl-carousel/owl.carousel.css" />
<link rel="stylesheet" href="res/js/owl-carousel/owl.theme.css" />
<link rel="stylesheet" href="res/js/owl-carousel/owl.transitions.css" />

<!-- animation -->
<link rel="stylesheet" href="res/js/wow/animate.css" />

<!-- font awesome -->
<link rel="stylesheet" href="res/css/font-awesome/css/font-awesome.min.css" />

<!-- lightbox -->
<link rel="stylesheet" href="res/js/lightbox/css/lightbox.css" />

<!-- style for this template -->
<link rel="stylesheet" href="res/css/style.css" />

<!-- Customized style for this template -->
<link rel="stylesheet" href="res/css/mystyle.css" />

<!-- JQuery -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="res/js/jquery.min.js"><\/script>')</script>
<!-- Bootstrap js -->
<script type="text/javascript" src="res/bootstrap-3.3.4/js/bootstrap.min.js"></script>

<!-- mousewheel listener  -->
<script type="text/javascript" src="res/js/jquery.mousewheel.min.js"></script>

<!-- Easing - for transitions and effects -->
<script type="text/javascript" src="res/js/jquery.easing.1.3.js"></script>

<!-- Animated scroll -->
<script type="text/javascript" src="res/js/animatescroll.min.js"></script>


</head>
<body>

<div class="background-image-overlay"></div>

<div id="outer-background-container"></div>

<div id="outer-container">
	
	
	<!-- Left Sidebar -->
	<section id="left-sidebar">
		<div id="mobile-menu-icon" class="visible-xs" onClick="toggle_main_menu();">
			<span class="glyphicon glyphicon-th"></span>
		</div>

		<ul id="main-menu">
			<li id="menu-item-home" class="menu-item scroll active"><a href="#home">Home</a></li>
			<li id="menu-item-aboutme" class="menu-item scroll"><a href="#aboutme">About me</a></li>
			<li id="menu-item-blank" class="menu-item scroll">&nbsp;</li>
			<li id="menu-item-chain" class="menu-item scroll"><a href="#car">Car Insurance</a></li>
			<li id="menu-item-chain" class="menu-item scroll"><a href="#chain">Chain Rep</a></li>
			<li id="menu-item-fbi" class="menu-item scroll"><a href="#fbi">Country Data</a></li>
			<li id="menu-item-icflash" class="menu-item scroll"><a href="#icflash">ICFlash</a></li>
			<li id="menu-item-linkedout" class="menu-item scroll"><a href="#linkedout">LinkedOut</a></li>
			<li id="menu-item-nca" class="menu-item scroll"><a href="#nca">NCA</a></li>
			<li id="menu-item-prediction" class="menu-item scroll"><a href="#prediction">Price Prediction</a></li>
			<li id="menu-item-blank" class="menu-item scroll">&nbsp;</li>
			<li id="menu-item-contact" class="menu-item scroll"><a href="#contact">Contact</a></li>			
			<li id="menu-item-oldsite" class="menu-item scroll"><a href="http://www.ic.sunysb.edu/stu/xianlin/" 
			target="cos">
				Classical Old Site</a>
			</li>
		</ul>	
	</section><!-- end of Left Sidebar -->
	
	<section id="main-content" class="clearfix">

		<article id="home" class="section-wrapper clearfix" data-custom-background-img="images/main/bg01.jpg">
			<div class="content-wrapper clearfix wow fadeInDown" data-wow-delay="0.3s">
			<div class="col-sm-10 col-md-9 pull-right">

				<section class="feature-text">
					<h1>Benjamin Lin</h1>
					<p>Welcome to my cabin</p>
					<p>A software/web developer's home</p>
					<p><a href="#contact" class="link-scroll btn btn-outline-inverse btn-lg" id="hireme">Contact Me</a></p>
					<p><a href="#aboutme" class="btn btn-outline-inverse btn-lg link-scroll" id="hireme">Read More</a></p>
				</section>

			</div><!-- .col-sm-10 -->
			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->

		<article id="aboutme" class="section-wrapper clearfix" data-custom-background-img="images/main/bg02.jpg">
			<div class="content-wrapper clearfix">
			<div class="col-sm-10 col-md-9 pull-right introduction">
				<h1 class="section-title">About Me</h1>
				<p class="feature-paragraph"><img data-img-src="images/main/profile.jpg" class="lazy pull-right"></p>
				<p align="left" style="text-indent: 2em"> Hi! My name is Benjamin Lin, Chinese name 林 贤. I am currently 
					a master student in 
                    Computer Science at Stony Brook University (SBU), NY, USA, and expected to graduate in May 2015. 
                    My strength lies on web development with programming language Java, scripting language JavaScript, 
                    markup languages HTML/CSS/XML, and MySQL/Sybase/SQL Server DB. I am also learning Python now.</p>
				                
                <p align="left" style="text-indent: 2em">
                    In my spare time, I like swimming and playing recorder. 
                    I am also passionate in singing and actively serve in a church choir. 
                    I am also a <q>chef</q> being able to cook yummy Chinese food :)
                </p>
                
				<p>
					<a href="docs/Resume_BenjaminLin.pdf" target="_blank" class="btn btn-outline-inverse btn-lg 
				link-scroll">Resume</a>
					&nbsp;
					<a href="https://starwavelin.wordpress.com" class="btn btn-outline-inverse btn-lg 
                	link-scroll" id="blog" target="_target" id="hireme">Blog</a>
                </p>
				<p align="left" style="text-indent: 2em">
                    The following are selected projects I did in my 2 year master program.
                </p>

			</div><!-- .col-sm-10 -->
			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		<article id="car" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_car.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/carIns.png" alt="Lorem Ipsum">
						<h2 class="title">A Car Insurance Site</h2>
						<p>Implemented a car insurance site which allowed adding/editing car owner and vehicle info
						using JSP, Java Servlet and MySQL and following the MVC design pattern.
						</p>
						<p><a href="https://github.com/starwavelin/SimpleCarInsuranceWeb" 
						class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		
		

		<article id="chain" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_chain.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/chain.png" alt="Lorem Ipsum">
						<h2 class="title">Chain Replication of Banks</h2>
						<p>Use Java to write a simulated banking system with bank servers being chain 
						replicated,
						supporting basic functions like deposit, withdraw, get the current balance, and transfer.
						</p>
						<p><a href="https://github.com/starwavelin/ChainRep" 
						class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		<article id="fbi" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_fbi.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/fbi.png" alt="Lorem Ipsum">
						<h2 class="title">Country Data</h2>
						<p>Analyze the performance of each nation in the world based on this 
						<a href="./docs/country-data.csv" target="_blank">dataset</a> 
						collected by FBI in 2010. <br />
						Tool: iPython Notebook.</p>
						<p><a href="./countryData.html" class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->

		
		<article id="icflash" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_icflash.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/icflash.png" alt="Lorem Ipsum">
						<h2 class="title">ICFlash</h2>
						<p>An Adobe AIR application allowing an end user to issue
						HTTP GET requests, execute DNS queries, and send the corresponding
						results to the 
						<a href="https://github.com/iclab/centinel-server" target="_blank">Centinel Server</a> 
						of 
						<a href="http://www.internetcensorshiplab.com/" target="_blank">ICLab</a>
						</p>
						<p><a href="~cse534/index.html" class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		



		<article id="linkedout" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_linkedout.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/linkedout.png" alt="Lorem Ipsum">
						<h2 class="title">LinkedOut</h2>
						<p>Use PostgreSQL, Java Servlet and bootstrap JavaScript/CSS to develop 
						a simplified version of LinkedIn, with basic endorsing logic implemented.</p>
						<p><a href="https://github.com/starwavelin/LinkedOut" 
						class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		<br /><br /><br /><br /><br />
		
		<article id="nca" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_nca.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/nca.png" alt="Lorem Ipsum">
						<h2 class="title">Website of National Computerized Agency</h2>
						<p>Maintain and add values to this marketing website 
						written using Google Web Toolkit.						 
						Document the code, including drawing the database model diagram and UML Package/Class diagrams.
						</p>
						<p><a href="https://www.ncainsurance.com/" 
						class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->
		
		<br /><br /><br /><br />
		
		<article id="prediction" class="section-wrapper clearfix" data-custom-background-img="images/main/bg03_prediction.jpg">
			<div class="content-wrapper clearfix" >

				<div id="features-carousel" class="carousel slide with-title-indicators max-height" 
				data-height-percent="70" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
					<div class="carousel-text-content">
						<img style="max-width: 100%" src="images/projects/prediction.png" alt="Lorem Ipsum">
						<h2 class="title">Predicting Oil and Gold Prices</h2>
						<p>Develop simple baseline models to predict the price of Oil and Gold one month in advance<br />
						Tool: iPython Notebook.</p>
						<p><a href="http://www3.cs.stonybrook.edu/~skiena/591/final_projects/oil_gold_prices/" 
						class="btn btn-outline-inverse btn-sm" target="_blank">View It</a></p>
					</div>
					</div><!-- .item -->					

				</div><!-- .carousel-inner -->
				</div><!-- #about-carousel -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->

		
		
		

		<article id="contact" class="section-wrapper clearfix" data-custom-background-img="images/main/bg04.jpg">
			<div class="content-wrapper clearfix">

				<h1 class="section-title">Contact</h1>

				<!-- CONTACT DETAILS -->
				<div class="contact-details col-sm-5 col-md-3">
					<p>21 Washington Avenue<br/>East Setauket<br/>NY 11733</p>
				</div>
				<!-- END: CONTACT DETAILS -->

				<!-- CONTACT FORM -->
				<div class="col-sm-7 col-md-9">
					<!-- Instead of using assets/php/mail.php, I chose Java Servlet. -->
					<form class="form-style validate-form clearfix" action="Mail" method="GET">

					<!-- form left col -->
					<div class="col-md-6">
						<div class="form-group">
						<input type="text" class="text-field form-control validate-field required" data-validation-type="string" id="form-name" placeholder="Full Name" name="name">
						</div>
						<div class="form-group">
						<input type="email" class="text-field form-control validate-field required" data-validation-type="email" id="form-email" placeholder="Email Address" name="email">
						</div>
						<div class="form-group">
						<input type="tel" class="text-field form-control validate-field phone" data-validation-type="phone" id="form-contact-number" placeholder="Contact Number" name="contact_number">
						</div>
					</div><!-- end: form left col -->

					<!-- form right col -->
					<div class="col-md-6">
						<div class="form-group">
						<textarea placeholder="Message..." class="form-control validate-field required" name="message"></textarea>
						</div>
						<div class="form-group">
						<img src="./images/toolkit/loading.gif" class="form-loader">
						<button type="submit" class="btn btn-sm btn-outline-inverse">Submit</button>
						</div>
						<div class="form-group form-general-error-container"></div>
					</div><!-- end: form right col -->

					</form>
				</div><!-- end: CONTACT FORM -->

			</div><!-- .content-wrapper -->
		</article><!-- .section-wrapper -->

		</section><!-- #main-content -->

		<!-- Footer -->
		<section id="footer">

		<!-- Go to Top -->
		<div id="go-to-top" onclick="scroll_to_top();"><span class="icon glyphicon glyphicon-chevron-up"></span></div>

		<ul class="social-icons">
			<li><a href="https://www.linkedin.com/pub/benjamin-x-lin-林-贤/28/12b/427" target="_blank" title="LinkedIn">
				<img src="images/icons/linkedin-icon.png" alt="Linkedin"></a></li>
			<li><a href="https://github.com/starwavelin" target="_blank" title="Github">
				<img src="images/icons/github-icon.png" alt="Github"></a></li>
			<li><a href="https://twitter.com/starwavelin" target="_blank" title="twitter">
				<img src="images/icons/twitter-icon.png" alt="twitter"></a></li>
			<li><a href="https://starwavelin.wordpress.com/" target="_blank" title="WPress">
				<img src="images/icons/wpress.png" alt="wpress"></a></li>
			<li><a href="http://www.2redbeans.com/zh-CN/chinese-singles/vEH2eMcEK8" target="_blank" title="2RedBeans">
				<img src="images/icons/redbeans-icon.png" alt="2redbeans"></a></li>			
		</ul>

		<!-- copyright text -->
<!--		<div class="footer-text-line">&copy; 2014 Twilli | Air</div>-->
				 
			<%@ include file="visitorCounter.jsp" %>
		</section>
		<!-- end: Footer -->
	
	
</div> <!-- end of outer-container -->
	


<!-- background image strech script -->
<script type="text/javascript" src="res/js/jquery.backstretch.min.js"></script>

<!-- wheel scroll -->
<script type="text/javascript" src="res/js/wheelscroll.js"></script>

<!-- detect mobile browsers -->
<script type="text/javascript" src="res/js/detectmobilebrowser.js"></script>

<!-- owl-carousel js -->
<script type="text/javascript" src="res/js/owl-carousel/owl.carousel.min.js"></script>

<!-- lightbox js -->
<script type="text/javascript" src="res/js/lightbox/js/lightbox.min.js"></script>

<!-- intro animations -->
<script type="text/javascript" src="res/js/wow/wow.min.js"></script>

<!-- Custom functions for this theme -->
<script src="res/js/functions.js"></script>
<script src="res/js/initialise-functions.js"></script>

</body>
</html>