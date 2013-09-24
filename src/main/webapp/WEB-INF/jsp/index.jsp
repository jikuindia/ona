<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Oman News Agency</title>
<link rel="stylesheet" type="text/css" media="all" href="css/style.css"></link>
 
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen,projection"/>

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>  
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link href="themes/4/slider.css" rel="stylesheet" type="text/css" />
<script src="themes/4/jquery-slider.js" type="text/javascript"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript' src='dwr/interface/dwrService.js'></script>
<script type="text/javascript" src="js/indexpage.js"></script>
<link href="css/weather.css" rel="stylesheet" type="text/css" />
  <script src="js/jquery.zweatherfeed.min.js" type="text/javascript"></script>

<!-- for graph -->
 <link class="include" rel="stylesheet" type="text/css" href="graph/css/jquery.jqplot.min.css" />
    <link type="text/css" rel="stylesheet" href="graph/css/shCoreDefault.min.css" />
    <link type="text/css" rel="stylesheet" href="graph/css/shThemejqPlot.min.css" />
  
     <script class="include" type="text/javascript" src="graph/js/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="graph/js/shCore.min.js"></script>
    <script type="text/javascript" src="graph/js/shBrushJScript.min.js"></script>
    <script type="text/javascript" src="graph/js/shBrushXml.min.js"></script>
<!-- Additional plugins go here -->

<script type="text/javascript" src="graph/plugins/jqplot.logAxisRenderer.min.js"></script>
<script type="text/javascript" src="graph/plugins/jqplot.canvasAxisTickRenderer.min.js"></script>
<script type="text/javascript" src="graph/plugins/jqplot.dateAxisRenderer.min.js"></script>
<script type="text/javascript" src="graph/plugins/jqplot.categoryAxisRenderer.min.js"></script>

  <script class="include" type="text/javascript" src="graph/plugins/jqplot.barRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="graph/plugins/jqplot.pieRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="graph/plugins/jqplot.categoryAxisRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="graph/plugins/jqplot.pointLabels.min.js"></script>
  
  <script class="include" type="text/javascript" src="graph/plugins/jqplot.canvasTextRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="graph/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
  <!-- sports slider.. -->
   <link href="themes2/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="themes2/1/js-image-slider.js" type="text/javascript"></script>
  
  <!-- zooming pic -->
  <script type="text/javascript" src="highslide/highslide-with-html.js"></script>
  
   <script class="code" type="text/javascript">
   $(document).ready(function(){
		
		 var line2 = ${currencyDataString};
		 
		    var plot2 = $.jqplot('chart2', [line2], {
		      axes: {
		        xaxis: {
		          renderer: $.jqplot.DateAxisRenderer,
		          label: 'Date',
		          labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
		          tickRenderer: $.jqplot.CanvasAxisTickRenderer,
		          tickOptions: {
		              // labelPosition: 'middle',
		              angle: 2
		          }
		           
		        },
		        yaxis: {
		          label: 'Currency',
		          labelRenderer: $.jqplot.CanvasAxisLabelRenderer
		        }
		      }
		    });
		 
		});

   $(function(){
	   
	   $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
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
 <script class="code" type="text/javascript">$(document).ready(function(){
        $.jqplot.config.enablePlugins = true;
        var s1 = ${oilDataList[1]};
        var ticks = ${oilDataList[0]};
        
        plot1 = $.jqplot('chart1', [s1], {
            // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
            animate: !$.jqplot.use_excanvas,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
				pointLabels: { show: true, location: 'e', edgeTolerance: -15 },
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal'
                }

            },

            axes: {
                yaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            },
            highlighter: { show: false }
        });
    
        $('#chart1').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        );
    });
 

 </script>
    
 

<link href="css/ticker-style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.ticker.js" type="text/javascript"></script>
<script src="js/site.js" type="text/javascript"></script>

 
   <script type="text/javascript">
     function tick2(){
		$('#ticker_02 li:first').slideUp( function () { $(this).appendTo($('#ticker_02')).slideDown(); });
	}
	setInterval(function(){ tick2 () }, 3000);
	
    </script>  
<script type="text/javascript">
$(document).ready(function () {
       $('#test').weatherfeed(['MUXX0003']);
});
</script>

</head>

<body>
												
<input type="hidden" name="lang" id="lang" value="${sessionScope.lang}"/>
<div class="mainBlock">

<!--Header Start-->
<%-- <jsp:include page="header.jsp"> --%>
<!--Menu ENd-->
<div class="clear_fix"></div>

<!--Content Block Start-->
<div class="contantBlock">
<!--Banner Start-->
<div class="bannerBlock">
<div id="wrapper">
        <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
                <!-- <img src="images/img1.png" alt=""  width="1000" height="230"/>
                 <img src="images/img1.png" alt=""  width="1000" height="230"/>
                <img src="images/img1.png" alt=""  width="1000" height="230"/>
                 <img src="images/img1.png" alt=""  width="1000" height="230"/>       -->    
                                
                
        <c:forEach var="imagecommandBan" items="${imagecommandBan}">
           	 <img src="pict/${imagecommandBan}" width="217" height="125" />
         </c:forEach>        
       
                     
                        
             </div>            
        </div>
    </div>
    </div>
<!--Banner End-->

<div class="newsBlock">
<!--News : The Radio Sultanate of Oman  began a new broadcast of "Classical Music Programme" in the 22/7/2010 to join the other four radio programmes: the General...-->


<ul id="js-news" class="js-hidden" >
<c:forEach var="newsTitleCommand" items="${newsTitleCommand}">
  	<li  class="news-item"><a onclick="getNewsDesc(${newsTitleCommand.id})" style='cursor: pointer;'>${newsTitleCommand.newsTitle}</a></li>
</c:forEach>
</ul>


</div>



<!--First Block Start-->

<table>
<tr>
<td>
<div class="float_left welcomeBolck">
<table width="100%"><tr><td><div class="welcomeText">Latest News</div></td>
<td align="right"><a class='flatbtn' onclick='showNewsDetail()'>Back</a></td>
</tr></table>


<div class="text" id="newsDetail" style="height:250px;overflow: scroll;overflow-x:hidden " >
<c:forEach var="newsTitleCommand" items="${newsTitleCommand}">
  	<div ><a onclick="getNewsDesc(${newsTitleCommand.id})" style="cursor: pointer;"><u>${newsTitleCommand.newsTitle}</u></a></div>
</c:forEach>
</div>

<div class="text" id="newsText" style="height:250px;overflow: scroll;overflow-x:hidden;display: none; "  >

</div>
</div>
</td>
<td>
<div class="float_left selectedSongsBlock">
<!-- <div class="info" >
<a class="hideshow" href="#" >Hide</a>
</div> -->
<iframe width="289" height="289" src="//www.youtube.com/embed/cSVdLKeQw28" frameborder="0" allowfullscreen></iframe>

</div>
</td>
</tr>
</table>


<!--First Block End-->
<div class="clear_fix"></div>
<!--Second Block Start-->
<div class="marginTop imageSliderBlock">

<div class="div2">
       <!-- start for popup -->
     <a href="#loginmodal" class="flatbtn" id="modaltrigger"><spring:message code="label.morephoto"/></a>
  <div id="loginmodal" style="display:none;">
    
    
    <iframe src="photoGallery.html" width="1015px" height="800px" frameborder="0" ></iframe>
   
					</div>
					
						
  <!-- --End for popup-- -->
        <div id="mcts1">
        <c:forEach var="imagecommand" items="${imagecommand}">
           	 <img src="pict/${imagecommand}" width="217" height="125" />
         </c:forEach>        
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
<div class="float_left headerbg"><div class="headerText"><spring:message code="label.unionAndAgency"/></div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href="http://www.fananews.com/en" target="_blank">www.fananews.com/en</a></div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href="http://www.oananews.org/" target="_blank">www.oananews.org/</a></div>
</div>

<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://www.en.irna.ir/" target="_blank">www.en.irna.ir/</a></div>
</div>
</div>
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg"><div class="headerText"><spring:message code="label.AGCCNEWS"/></div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://wam.org.ae" target="_blank">www.wam.org.ae</a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://qnaol.net" target="_blank">www.qnaol.net</a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://bna.bh" target="_blank">www.bna.bh</a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://spa.gov.sa" target="_blank">www.spa.gov.sa</a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="http://kuna.net.kw" target="_blank">www.kuna.net.kw</a></div>
</div>
</div>
<div>
<div class="float_left headerLeft"></div>
<div class="float_left headerbg"><div class="headerText"><spring:message code="label.Ourservices"/></div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div style="padding:10px;">
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="/ona/ftp.html" target="_blank"><spring:message code="label.ftp"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="/ona/rss.html" target="_blank"><spring:message code="label.rss"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a href ="/ona/sabqServices.html" target="_blank"><spring:message code="label.sabaqservices"/></a></div>
</div>
</div>
</div>

<!--block-1 End-->

<!--block-2 start-->
<div class="float_left" style="width:706px">
<!--subBluck-1 start-->
<div class="float_left inpUrl" >
<div >
<div class="float_left headerLeft"></div>
<div class="float_left headerbg1"><div class="headerText"><spring:message code="label.ImpWebSite"/></div></div>
<div class="float_left headerRight"></div>
</div>
<div class="clear_fix"></div>
<div class="scrollValue">
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.diwan.gov.om/"><spring:message code="label.DewanRoyalCort"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mnhc.gov.om/"><spring:message code="label.MHC"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.omanet.om"><spring:message code="label.minsitryInfo"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.moneoman.gov.om/"><spring:message code="label.minstryNationalEconomy"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mof.gov.om/"><spring:message code="label.minsFinace"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mocioman.gov.om/"><spring:message code="label.minsComarceIndustry"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mog.gov.om/"><spring:message code="label.minsOilGAs"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.moj.gov.om/"><spring:message code="label.minsjustice"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mara.gov.om/"><spring:message code="label.minsReligious"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.comm.gov.om/"><spring:message code="label.minsTransCom"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.moh.gov.om/"><spring:message code="label.minsHelth"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.edu.gov.om/"><spring:message code="label.minsEducation"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mohe.gov.om/"><spring:message code="label.minsHigherEducation"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.maf.gov.om/"><spring:message code="label.minsAgriculture"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.omanmocs.com/"><spring:message code="label.minsCivilService"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mrmewr.gov.om/"><spring:message code="label.minsREgMuncipalities"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.goysca.gov.om/"><spring:message code="label.generalOrganization"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.rop.gov.om/"><spring:message code="label.RoyalomanPolice"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.tenderboard.gov.om/"><spring:message code="label.OmanTenderBoard"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.msm.gov.om/"><spring:message code="label.MSM"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.sgsa.com/"><spring:message code="label.SecGenStateAud"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.chamberoman.com/"><spring:message code="label.OmanChember"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.mctmnet.gov.om/"><spring:message code="label.muscotmuncipalty"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.dm.gov.om/"><spring:message code="label.DhfarMuncipalities"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.royalhospital.med.om/"><spring:message code="label.RoyalHospital"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.dgcam.com.om/"><spring:message code="label.DGCAM"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.ociped.com/"><spring:message code="label.OCIPED"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.salalahport.com/"><spring:message code="label.salalahPort"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.youthfund.com/"><spring:message code="label.foundDevYouthproject"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.oryxoman.com/"><spring:message code="label.AOP"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.aei.org.om/"><spring:message code="label.AEIForChildren"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.oadisabled.org.om/"><spring:message code="label.OAD"/></a></div>
</div>
<div class="urlbg">
<div class="bul float_left"></div>
<div class="UrlName1 float_left"><a target="_blank" href="http://www.octm-folk.org/"><spring:message code="label.OCTM"/></a></div>
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
<div style="margin-top:2px; padding-left:2px" >
<!-- <img src="images/weather.png" width="286" /> --></div>
<div id="test" style="margin-left: 5px;margin-top: 7px"></div>
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

 <div id="chart1" style="margin-top:32px;  width:400px; height:180px;"></div>


<!-- <img src="images/oilPrice.png" width="402" height="172" /> -->
</div>
</div>
<!--vvvvv-->
<div class="float_left priceBlock">
<div id="sliderFrame">
<div id="sportslider">

<a target="_blank" href="http://www.royalhospital.med.om/"><img src="sportsImages/image-slider-1.jpg" /></a>
<a target="_blank" href="http://www.aei.org.om/"><img src="sportsImages/image-slider-2.jpg" /></a>
<a target="_blank" href="http://www.youthfund.com/"><img src="sportsImages/image-slider-3.jpg" /></a>
<a target="_blank" href="http://www.chamberoman.com/"><img src="sportsImages/image-slider-4.jpg" /></a>
<!-- <a target="_blank" href="http://www.salalahport.com/"><img src="sportsImages/image-slider-5.jpg" /></a> -->
</div>
</div>

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
<div class="UrlName11"><spring:message code="label.fajr"/> ${prayercommand.prayer1}</div>
<div class="UrlName11"><spring:message code="label.Dhuhr"/> ${prayercommand.prayer2}</div>
<div class="UrlName11"><spring:message code="label.asr"/> ${prayercommand.prayer3}</div>
<div class="UrlName11"><spring:message code="label.maghrib"/> ${prayercommand.prayer4}</div>
<div class="UrlName11"><spring:message code="label.isha"/> ${prayercommand.prayer5}</div>


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
<div style="height:15px;"></div>
<div style=" width:400px; height:180px;" id="chart2">
<pre class="code brush:js"></pre>

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
<blockquote class="twitter-tweet" style="height100px"><a href="http://t.co/WJTCIGdF4C"></a></p><a href="https://twitter.com/OmanNewsAgency/statuses/381053580926386176"></a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

</div>

</div>


</div>
</div>

<!--3rd Block End-->
<div class="clear_fix"></div>
<!--footer start-->
<%-- <jsp:include page="footer.jsp"/> --%>
<!--footer End-->

</div>
<!--Content Block End-->
</div>

</div>

</body>
</html>
