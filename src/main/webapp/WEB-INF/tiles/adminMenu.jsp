<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen,projection"/>
<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>  
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<style type="text/css" media="screen">
#horizontalmenu ul {
padding:1; margin:1; list-style:none;
}
#horizontalmenu li {
float:left; position:relative; padding-right:100; display:block;

}
#horizontalmenu li ul {
    display:none;
position:absolute;
}
#horizontalmenu li:hover ul{
    display:block;
    background:green;
height:auto; width:8em;
}
#horizontalmenu li ul li{
    clear:both;
border-style:none;}
</style>
<link href="themes/4/slider.css" rel="stylesheet" type="text/css" />
<!--Menu Start-->
<div class="menuBlock">
<div class="manuLeftBg float_left"></div>
<div class="menuBg float_left">
<div class="float_left"><div class="menuText">Home Page</div></div>
<div class="menuSeperator float_left"></div>           
  <div class="float_left"><div class="menuText"><a class="menuText" href="/ona/addNewsDisplay.html">Add News</a>                      
</div></div>
<div class="menuSeperator float_left"></div>
 <div class="float_left"><div class="menuText"><a class="menuText" href="/ona/displayNews.html">Edit News</a>                      
</div></div>
<div class="menuSeperator float_left"></div>
<div class="float_left"><div class="menuText"><a class="menuText" href="/ona/ifthaar.html">Ifthaar</a></div></div>
<div class="menuSeperator float_left"></div>
<div class="float_left"><div class="menuText"><a class="menuText" href="/ona/addOilPrice.html">Oil Price</a></div></div>
<div class="menuSeperator float_left"></div>
<div class="float_left"><div class="menuText"><a class="menuText" href="/ona/multiShow.html">Add Picture</a></div></div>
<div class="menuSeperator float_left"></div>
<div class="float_left"><div class="menuText"><a class="menuText" href="/ona/changePassword.html">Change Password</a></div></div>
<div class="menuSeperator float_left"></div>

<div class="float_left"><div class="menuText"><a class="menuText" href="/ona/logout.html">Logout</a></div></div>
</div>
<div class="menuRightBg float_left"></div>
</div>
