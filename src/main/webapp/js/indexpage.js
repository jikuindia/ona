function getNewHeadline()
  {
	  var language= document.getElementById("lang").value;
	  dwrService.getNewsHeadline(language,function(data){
		  alert(data[0].newsTitle);
		  var ul = document.getElementsByTagName('ul')[0];
		  var newLI = document.createElement("li");
		  newLI.ClassName="news-item";
		  ul.appendChild(newLI);
		  newLI.innerHTML = data[0].newsTitle;
			  
	  });
	  
	    
  }

function getNewsDesc(newsId)
{
	 
      var language= document.getElementById("lang").value;
	  dwrService.getNewsDesc(language,newsId,function(data){
		  document.getElementById("newsText").style.display="";
		  document.getElementById("newsDetail").style.display="none";
			  document.getElementById("newsText").innerHTML="";
		  
	  document.getElementById("newsText").innerHTML="<table border='0'><tr><td><div class='welcomeText'><u>"+data.newsTitle+"</u></div><td></tr></table><div class='welcomeText'>"+data.mainDesc+"</div>";
	  });
}

function showNewsDetail()
{
	 document.getElementById("newsText").style.display="none";
	  document.getElementById("newsDetail").style.display="";
	
}




 