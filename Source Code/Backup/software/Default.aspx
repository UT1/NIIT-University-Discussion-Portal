<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="software._Default" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NewsFeed</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.css">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>   
     <link href="css/li-scroller.css" rel="stylesheet">
    <link href="css/slick.css" rel="stylesheet">
     <link href="css/jquery.fancybox.css" rel="stylesheet">    
     <link href="css/theme.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
 
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 
<title>(Type a title for your page here)</title>
<script type="text/javascript">
$(document).ready(function(){
    $("#found").click(function(){
        $(".del").load("found.js");
		});
	$("#lost").click(function(){
        $(".del").load("lost.js");
		});
		$("#event").click(function(){
        $(".del").load("event.js");
		});
		
}); 

function display_c(){
var refresh=1000; 
mytime=setTimeout('display_ct()',refresh)
}

function display_ct() {
var strcount
var now = new Date();
var days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
var months = ['January','February','March','April','May','June','July','August','September','October','November','December'];

var day = days[ now.getDay() ];
var month = months[ now.getMonth() ];
var date=now.getDate();
var hours=now.getHours();
var min=now.getMinutes();
var time=hours+":"+min;
document.getElementById('day').innerHTML = day;
document.getElementById('month').innerHTML = month;
document.getElementById('date').innerHTML = date;
document.getElementById('time').innerHTML = time;


}
</script>


<body onload="display_ct()";>

</body>
  </head>
<body>
  
  <div id="preloader">
    <div id="status">&nbsp;</div>
  </div>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
  
  <div class="container">
    
    <header id="header" style="width=100%;width:100%;">    
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="header_top" style="background-color:#212121;opacity:0.8;">
            <div class="header_top_left">
              <ul class="top_nav">
                <li><a href="Default.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="contact.html">Contact</a></li>
              </ul>
            </div>
            <div class="header_top_right" style="margin-right:-40px;margin-top:15px;">
              <span id='day' style="position:relative;font-family:oswald;color:#EEEEEE;margin-right:10px;letter-spacing:1px;"></span>
			  <span id='month' style="position:relative;font-family:oswald;color:#EEEEEE;margin-top:40px;letter-spacing:1px;"></span>
			  <span id='date' style="position:relative;font-family:oswald;color:#EEEEEE;margin-top:15px;margin-right:30px;letter-spacing:1px;"></span>
			  <span id='time' style="position:relative;font-family:oswald;color:#EEEEEE;margin-top:15px;margin-right:30px;letter-spacing:1px;"></span>
            </div>
          </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12" >
          <div class="header_bottom" >
            <div class="logo_area" style="background-color:#FFECB3">
              
              <a href="Default.aspx" class="logo">
                <img src="img/nu.jpg" alt="logo">
              </a> 
          
               <a href="#" class="logo" >
                <span style="letter-spacing:2px;color:#BF360C;font-family:oswald">ONLINE DISCUSSION PORTAL</span>
              </a> 
            </div>
                      </div>
        </div>
      </div>  
    </header> 
     
    <section id="navArea">
      <nav class="navbar navbar-inverse" role="navigation">      
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>          
        </div>
        <div id="navbar" class="navbar-collapse collapse" style ="width:100%; display:inline;background:#212121">
          <ul class="nav navbar-nav main_nav">

            <li class="acive" style="background:#212121;color:#212121"><a href="Default.aspx"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
            <li>
<head>
<style>
.dropbtn {
    background-color: #212121;
    color: white;
    padding: 16px;
    font-size: 14px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #EEEEEE;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
.dropdown-content a:hover {
    color: white;
	transition:all 0.3s;
	opacity:0.9;
	background:#BF360C;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}


.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color:#BF360C;
}
</style>
</head>
<body>
<div class="dropdown" >
  <button class="dropbtn" style="font-family:oswald">CREATE</button>
  <div class="dropdown-content" style="z-index:999;font-family:oswald">
    <a href="lost.aspx">LOST POST</a>
    <a id="found">FOUND POST</a>
    <a id="event">EVENT POST</a>
  </div>
</div>
</body>
<body>
<div class="dropdown" >
  <button class="dropbtn" style="font-family:oswald">EDIT POST</button>
  <div class="dropdown-content" style="z-index:999;font-family:oswald">
    <a id="lost">LOST POST</a>
    <a id="found">FOUND POST</a>
    <a id="event">EVENT POST</a>
  </div>
</div>
</body>
<body>
<div class="dropdown" >
  <button class="dropbtn" style="font-family:oswald">DELETE POST</button>
  <div class="dropdown-content" style="z-index:999;font-family:oswald">
    <a id="lost">LOST POST</a>
    <a id="found">FOUND POST</a>
    <a id="event">EVENT POST</a>
  </div>
</div>
</body>
</li>

            <li><a href="#">MANAGE PROFILE</a></li>
            </ul>
            <ul class="nav navbar-nav main_nav" style="float:right; margin-right:-1%;">
            <li><a href="#">Logout</a></li>            
            </ul>
                     
        </div>     
      </nav>
    </section>
	
    <section id="newsSection">
      <div class="row" style="background=#212121";>
        <div class="col-lg-12 col-md-12" style="background=#212121";>
          <div class="latest_newsarea" style="background=#212121";>      
            <span>Latest News</span>
            <ul id="ticker01" class="news_sticker" style="background=#212121"; >
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My First News Item</a></li> 
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Second News Item</a></li>
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Third News Item</a></li>
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Four News Item</a></li> 
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Five News Item</a></li>
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Six News Item</a></li>
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Seven News Item</a></li> 
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Eight News Item</a></li>
              <li><a href="#"><img src="img/news_thumbnail3.jpg" alt="">My Nine News Item</a></li>          
            </ul>
                  
          </div>
        </div>
      </div>
    </section>
	
 
    <section id="sliderSection" class="del">

	<div class="row">
									<div style="position:relative;float:right;">
<a class="twitter-timeline" data-width="360" data-height="300" data-theme="dark" data-link-color="#F5F8FA" href="https://twitter.com/niituniversity">Tweets by niituniversity</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>			
</div>

	<div class="col-lg-8 col-md-8 col-sm-8">

		<div class="slick_slider" style="margin-right:100px">
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu1.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu2.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu3.jpg" alt="img"></a>c
              <div class="slider_article">
                <h2><a class="slider_tittle" href="single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
              </div>
            </div>
            <div class="single_iteam">
              <a href="single_page.html"> <img src="img/nu1.jpg" alt="img"></a>
              <div class="slider_article">
                <h2><a class="slider_tittle" href="single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
              </div>
            </div>
          </div>

        </div>
     <div class="col-lg-12 col-md-12 col-sm-12" >
          <div class="latest_post">
            <h2><span>Latest post</span></h2>
            <div class="latest_post_container">
              <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
              <ul class="latest_postnav" >
                <li>
                   <div class ="outer">
                <div class ="name">
                    <center>
                    <b>
                    Post Posted By
                     </b>
                    </center>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                <center>
                    Contents of Post<br />
                    dkjsfabdhsfaasdhfksdafb khsdab ajfbsdahfdkhs fhbsdagf bsdhfbhsdfb khsdgahgfhsd abvhfbvsdakhfdsfvbhsd avfhsdvkfhsdavfkhdsavkkfh
                    </center>
                </div>
                <div>
                <center>
                    Images<br />
                    <img src = "img/nu2.JPG" alt = "" style =" max-height:250px; max-width:250px;" />
                    </center>
                </div>
                
              </div>
                </li>
	                <li>
                    <div class ="outer">
                <div class ="name">
                    <center>
                    <b>
                    Post Posted By
                     </b>
                    </center>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                <center>
                    Details of event<br />
                    dkjsfabdhsfaasdhfksdafb khsdab ajfbsdahfdkhs fhbsdagf bsdhfbhsdfb khsdgahgfhsd abvhfbvsdakhfdsfvbhsd avfhsdvkfhsdavfkhdsavkkfh
                    </center>
                </div>
                <div>
                <center>
                    Images<br />
                    <img src = "img/nu2.JPG" alt = "" style =" max-height=250px; max-width:250px;"
                    </center>
                </div>
            
                </li>
                <li>
                  <div class ="outer">
                <div class ="name">
                    <center>
                    <b>
                    Post Posted By
                     </b>
                    </center>
                   
                </div>
                 <hr  style ="margin-top:0px;"/>
                <div class ="contents">
                <center>
                    Details of events<br />
                    dkjsfabdhsfaasdhfksdafb khsdab ajfbsdahfdkhs fhbsdagf bsdhfbhsdfb khsdgahgfhsd abvhfbvsdakhfdsfvbhsd avfhsdvkfhsdavfkhdsavkkfh
                    </center>
                </div>

                  </div>
                </li>
                
              </ul>
         
             <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
            </div>
          </div>
        </div>
      </div>
    </section>   
    <footer id="footer" >       
      <div class="footer_top" style="opacity:8">
        <div class="row" >
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="footer_widget wow fadeInLeftBig">
      <h2>About</h2>
              <p>NIIT University is a private university founded in 2009. It is a not-for-profit institution, and is sponsored by NIIT Ltd</p>         
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="footer_widget wow fadeInRightBig">
              <h2>Contact</h2>
              <address>
                Address:NH 8, Delhi- Jaipur Highway, Neemrana, Rajasthan 301705				
              </address>
              <address>
               phone: 1800 103 5050
              </address>			   
            </div>
          </div>
        </div>
      </div>       
      <div class="footer_bottom">
        <p class="copyright">
          All Rights Reserved <a href="home.html">NIIT UNIVERSITY</a>
        </p>
        <p class="developer">Developed By <a href="moodle.niituniversity.in">NU STUDENTS</a></p>
      </div>    
    </footer>
  </div> 
  


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
  <script src="js/wow.min.js"></script>
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/slick.min.js"></script> 
  <script src="js/jquery.li-scroller.1.0.js"></script>
  <script src="js/jquery.newsTicker.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>    
  <script src="js/custom.js"></script> 
 

      
  </body>
</html>