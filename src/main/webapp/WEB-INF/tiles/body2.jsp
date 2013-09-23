<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Oman News Agency</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen,projection"/>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>  
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link href="themes/4/slider.css" rel="stylesheet" type="text/css" />
<script src="themes/4/jquery-slider.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    
     <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
	
	function swapTabs(id,hider1){		
	document.getElementById(id).style.display='block';	
	document.getElementById(hider1).style.display='none';
	
	
}
    </script>
<link href="css/ticker-style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.ticker.js" type="text/javascript"></script>
<script src="js/site.js" type="text/javascript"></script>

 
   <script type="text/javascript">
     function tick2(){
		$('#ticker_02 li:first').slideUp( function () { $(this).appendTo($('#ticker_02')).slideDown(); });
	}
	setInterval(function(){ tick2 () }, 3000);
	
   $(function(){
    $("ul#ticker01").liScroll();
    }); 
    </script>    
    
</head>

<body>
<div class="mainBlock">

<!--Header Start-->
<jsp:include page="header.jsp">

<!--Menu ENd-->
<div class="clear_fix"></div>

<!--Content Block Start-->
<div class="contantBlock">
<!--Banner Start-->
<div class="bannerBlock">
<div id="wrapper">
        <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
                <img src="images/img1.png" alt=""  width="1000" height="230"/>
                 <img src="images/img1.png" alt=""  width="1000" height="230"/>
                <img src="images/img1.png" alt=""  width="1000" height="230"/>
                 <img src="images/img1.png" alt=""  width="1000" height="230"/>              
                        
             </div>            
        </div>
    </div>
    </div>
<!--Banner End-->

<div class="newsBlock">
<div class="float_left">
<div class="newsText">
<!--News : The Radio Sultanate of Oman  began a new broadcast of "Classical Music Programme" in the 22/7/2010 to join the other four radio programmes: the General...-->


<ul id="js-news" class="js-hidden">
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief of Staff for Operations and Planning, the US ambassador to the Sultan...</li>
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief of Staff for Operations and Planning...</li>
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief </li>
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief of Staff for Operations and Planning, the US ambassador to the Sultan...</li>
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief of Staff for Operations and Planning...</li>
	<li class="news-item">The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief </li>
	</ul>



</div>
</div>
</div>



<!--First Block Start-->
<div  class="marginTop">

<!--Welcome Block start-->
<div class="float_left welcomeBolck">
<div class="welcomeText">Letest News</div>
<div class="text">
Muscat, June 9 (ONA) --- His Majesty Sultan Qaboos Bin Said gave an audience at Bait Al Barakah today to Gen. LIoyed J. Austin, Commander of the US Central Command, who is currently visiting the Sultanate.
<div class="textGap">
During the audience, a number of aspects of the existing cooperation between the two countries and issues of mutual concern were discussed.</div>
<div class="textGap">
The audience was attended by Lt.Gen Ahmed bin Harith al-Nabhani, Chief of Staff of the Sultan's Armed Forces (SAF), Greta Holtz, US ambassador to the Sultanate and the delegation accompanying the guest.
</div>
<div class="textGap">
Muscat, June 9 (ONA)--- Lt.Gen Ahmed bin Harith al-Nabhani, Chief of Staff of the Sultan's Armed Forces (SAF) received in Al Shafaq Club today Gen. LIoyed J. Austin, Commander of the US Central Command and his accompanying delegation, currently visiting the Sultanate. During the meeting, viewpoints were exchanged and issues of common concern were discussed. The meeting was attended by Brigadier Rashid bin Saif al-Shidi, Assistant SAF Chief of Staff for Operations and Planning, the US ambassador to the Sultanate and the Military . </div>
</div>
</div>
<!--Welcome Block End-->

<!--Selected Songs Block start-->
<div class="float_left selectedSongsBlock">

<img src="images/vedio.png" />
</div>
<!--Selected Songs Block End-->

</div>
<!--First Block End-->
<div class="clear_fix"></div>
<!--Second Block Start-->
<div class="marginTop imageSliderBlock">

<div class="div2">
        <div id="mcts1">
            <img src="images/slider1.png" width="217" height="151" />
            <img src="images/slider2.png" width="217" height="151" />
            <img src="images/slider3.png" width="217" height="151" />
            <img src="images/slider4.png" width="217" height="151" />   
             <img src="images/slider1.png" width="217" height="151" />
            <img src="images/slider2.png" width="217" height="151" />
            <img src="images/slider3.png" width="217" height="151" />      

        </div>
    </div>

</div>
<!--Second Block End-->
<div class="clear_fix"></div>

<!--3rd Block Start-->
<div class="marginTop">

<!--block-1 start-->
<div class="float_left topicsBlock">
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg"><div class="headerText">Topics</div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">
<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Nabhani Receives US Military Official
 </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">H.M. the Sultan Gives Audience to </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Maimani Meets with Italian Trade </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Minister Responsible for Defence Affairs </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Receives US Military Official
 </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Nabhani Receives US Military 
</div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Royal Office Minister/ Meeting
</div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">PART Organizes Two Training Courses</div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">MSM / Trading</div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Workshop on Child-Friendly Cities Opens </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Manila Amendments 2010/ Workshop </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Nabhani Receives US Military 
 </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Nabhani Receives US Military Official
 </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">H.M. the Sultan Gives Audience to </div>
</div>

<div class="songBg1">
<div class="songicon1 float_left"></div>
<div class="songName11 float_left">Al-Maimani Meets with Italian Trade </div>
</div>


</div>
</div>
<!--block-1 End-->

<!--block-2 start-->
<div class="float_left" style="width:706px">
<!--subBluck-1 start-->
<div class="float_left inpUrl">
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg1"><div class="headerText">Important Web Sites</div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Diwan of Royal Court</div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Ministry of Heritage and Culture</div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Ministry of Information</div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Ministry of National Economy </div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Ministry of Finance</div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left">Ministry of Commerce & Industry</div>
</div>

</div>
</div>

<div class="float_left priceBlock">
<div>
<div class="float_left headerLeft2"></div>
<div class="float_left headerbg2"><div class="headerText">Weather Forecast</div></div>
<div class="float_left headerRight2"></div>
</div>
<div class="clear_fix"></div>
<div style="margin-top:2px; padding-left:2px">
<img src="images/weather.png" width="286" /></div>
</div>
<!--subBlock-2 end-->
<div class="clear_fix"></div>

<div class="marginTop">
<div class="float_left inpUrl">
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg1"><div class="headerText">Oil Price</div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:2px;">

<img src="images/oilPrice.png" width="402" height="172" />
</div>
</div>
<!--vvvvv-->
<div class="float_left priceBlock">
<img src="images/omanSports.png" />

</div>


</div>
<!--block-2 End-->


</div>




<div class="clear_fix"></div>

<div class="marginTop">
<div class="float_left topicsBlock1">
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg"><div class="headerText">Prayer Timings</div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">

<div class="float_left">
<div class="UrlName11">Fajr 03:52</div>
<div class="UrlName11">Dhuhr 12:11</div>

<div class="UrlName11">Asr 03:30</div>

<div class="UrlName11">Maghrib 06:58	</div>
<div class="UrlName11">Isha 08:21</div>


</div>
<div class="float_left"><img src="images/prar.png" /></div>

</div>
</div>

<div class="float_left inpUrl">
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg1"><div class="headerText">Currency Rates</div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:6px 19px 2px 26px;">
<img src="images/price.png" />
</div>
</div>


<div class="header_3">
<div>
<div class="float_left btn_fb" onclick="swapTabs('facebook','twitter')">
<div class="fbbtnText">Facebook</div>

</div>
<div class="float_left btn_fb" onclick="swapTabs('twitter','facebook')">
<div class="fbbtnText">Twitter</div>
</div>
</div>
<div class="float_left priceBlock11">
<div style="padding:10px;" id="facebook">
<div style="margin-top:5px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was established  </div>
<div class="url">http://Oman News Agency .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
<div style="margin-top:10px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was established </div>
<div class="url">http://Oman News Agency .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
<div style="margin-top:10px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was established  </div>
<div class="url">http://Oman News Agency .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
</div>


<div style="padding:10px; display:none" id="twitter">
<div style="margin-top:5px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was established  </div>
<div class="url">http://Oman News .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
<div style="margin-top:10px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was </div>
<div class="url">http://Oman News Agency .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
<div style="margin-top:10px;">
<div class="float_left fbImage"><img src="images/img.png" /></div>
<div  class="float_left fbText">Oman News Agency was established  </div>
<div class="url">http://Oman News Agency .com</div>
<div class="about">about 1 hour ago reply</div>
</div>
</div>



</div>


</div>
</div>

<!--3rd Block End-->
<div class="clear_fix"></div>
<!--footer start-->
<jsp:include page="footer.jsp">
<!--footer End-->

</div>
<!--Content Block End-->
</div>

</div>

</body>
</html>
