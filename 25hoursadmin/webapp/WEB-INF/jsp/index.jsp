   <%@ page language="java" pageEncoding="utf8"
    contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
<%@ page isELIgnored ="false" %> 
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    
    <title>25hours</title>
    
    <meta name="keywords" content="25 Hours Food House: 24hours services and quickly deliver food. Fastfood delionvery service in yangon, myanmar 24/7 open">
    <meta name="description" content="25 Hours is a food house system and deliver food door to door system. We prefered to deliver food 24hour arround Bussiness Capital Yangon. Best Quality Fast Delivery">
    
    <meta name="viewport" content="width=device-width">
    
    <!-- Styles -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>


    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/custom-styles.css">

    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <link rel="shortcut icon" href="../img/upload/25hours.ico">
   
</head>

<body>

     <nav class="navbar navbar-inverse navbar-fixed-top top-nav-collapse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index-2.html" class="navbar-collapsed navbar-brand smlg"><img src="img/upload/25hours.png" alt="25hours" width="200" height="50" class="logo"></a>
            </div>
            <div class="collapse navbar-collapse fadeInDown animated" id="myNavbar">
                <ul class="nav navbar-nav">
					<li >
                        <a href="#" class="dropdown-toggle dropdown open" data-toggle="dropdown">Menu<b class="caret"></b></a>
                            <ul class="dropdown-menu fadeInDown animated">
                            <li><a href="fastfood.html">Fast Food</a></li>
                            <li><a href="junkfood.html">Junk Food</a></li>
                            <li><a href="special.html">Today Special</a></li>
                            </ul>
                    </li>
					<li><a href="services.html">Services</a></li>
					<li><a href="portfolio.html">Portfolio</a></li>
					<li><a href="blog.html">Blog</a></li>  
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.html">Register</a></li>			                  
                </ul>
            </div>
        </div>
    </nav>

    <!-- Carousel
        Change your images in the main.css file.
        ================================================== -->
    <div id="header" class="carousel slide animated fadeIn" data-ride="carousel">

            <!-- Indicators -->
            <ol class="carousel-indicators">
            <li data-target="#header" data-slide-to="0" class="active"></li>
            <li data-target="#header" data-slide-to="1"></li>
            <li data-target="#header" data-slide-to="2"></li>
            </ol>

        <div class="carousel-inner">
        <div class="item one active">
            <div class="container animated fadeInUp">
                <div class="carousel-caption">
                    <h1>Quality Products &amp; Quick Delivery</h1>
                    <p class="lead margin-40"><em>We serve shipping orders at minimum amount of your treasure time</em></p>
                </div>
            </div>
        </div>
        <div class="item two">
            <div class="container animated fadeInUp">
                <div class="carousel-caption">
                    <h1>Still fresh </h1>
					<p class="lead margin-40"><em>We use fresh &amp; hygenic ingedents forever.</em></p>
                </div>
            </div>
        </div>
        <div class="item three">
            <div class="container animated fadeInUp">
                <div class="carousel-caption">
                    <h1>24 hours service</h1>
					<p class="lead margin-40"><em>WE deliver 24/7 around yangon region.</em></p>
                </div>
            </div>
        </div>
        </div>
        </div><!-- /.carousel -->



    <div class="container">
        <div class="row">
            <!--News Article-->
            <div class="col-lg-3 col-sm-6 text-center">
            <div class="latest-article">
            <img src="img/upload/bugger.png" class="img-responsive" alt="Title">
            <p>Healthy fast food?
				Who hasn’t unwrapped a sandwich while driving down the highway or pulled a hard U-turn into a fast food joint on the way home from a late meeting or soccer game? We practically live in our cars, so we need quick food, and please, we’d like it to be healthy.<br/>
				Well, guess what: We surveyed the nation’s 100 largest fast food chains, as defined by the number of locations, and found that many are creating menus that look more and more like what we’d cook ourselves (if we had the time)—from nutritious soups and healthy salads to fresh whole grains and sensible desserts. Even better: They’re offering good-news Mexican, Asian, and Mediterranean fare.   
			</p>
            </div>
            </div>

            <!--News Article-->
            <div class="col-lg-3 col-sm-6 text-center">
            <div class="latest-article">
            <img src="img/bugger1.png" class="img-responsive" alt="Title">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><br />
                <a class="btn-main" href="smart_security.html"><i class="icon-chevron-right"></i> More</a>
            </div>
            </div>
        </div>
    </div>
    
   <section id="bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title" data-toggle="collapse" href="#1" aria-expanded="false"><a>services<i class="fa fa-angle-double-down animated acor-btn"></i></a></div>
                        </div>
                        <div id="1" class="panel-collapse collapse in" aria-expanded="true">
                            <ul class="list-unstyled">
                                <li class="list-unstyled footer_sub"><a href="smart_surveillance.html">smart survelliance</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_security.html">smart security</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">smart control</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading"> 
                            <div class="panel-title" data-toggle="collapse" href="#2" aria-expanded="false"><a>besopoke solution<i class="fa fa-angle-double-down animated acor-btn"></i></a></div>
                        </div>
                        <div id="2" class="panel-collapse collapse in" aria-expanded="true">
                            <ul class="list-unstyled">
                                <li class="list-unstyled footer_sub"><a href="smart_surveillance.html">security &amp; survelliance</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_security.html">electrical &amp; electronic</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">communication</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">control</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">web</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading"> 
                            <div class="panel-title" data-toggle="collapse" href="#3" aria-expanded="false"><a>htet<i class="fa fa-angle-double-down animated acor-btn"></i></a></div>
                        </div>
                        <div id="3" class="panel-collapse collapse in" aria-expanded="true">
                            <ul class="list-unstyled">
                                <li class="list-unstyled footer_sub"><a href="smart_surveillance.html">why htet</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_security.html">different</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">careers</a></li>
                                <li class="list-unstyled footer_sub"><a href="testimonial.html">testimonial</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">privacy policy</a></li>
                                <li class="list-unstyled footer_sub"><a href="smart_control.html">terms &amp; conditions</a></li>
                                <li class="list-unstyled footer_sub"><a href="contact.html">Contact</a></li>  
                            </ul>
                        </div>       
                    </div>
                </div>
            </div>
        </div>
    </section>
      <section id="footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 text-center">
            <p>Copyright &copy; 2016 <a href ="../index.html">UIT</a> All Rights Reserved. Created by <a href="https://plus.google.com/u/0/107656704119575949998?hl=en">UIT PGD WE 3</a></p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    
        <h2>Spring3MVC with Hibernate3 CRUD Example using Annotations</h2>  
        <h2>1. <a href="employees.do">List of Employees</a></h2>  
        <h2>2. <a href="add.do">Add Employee</a></h2>  
      </body>  
    </html>  