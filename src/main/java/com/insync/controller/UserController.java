package com.insync.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.ArrayAnnotationValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.insync.constant.ConvertURL;
import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.NewsTitleCommand;
import com.insync.service.AdminEditService;
import com.insync.service.DwrService;

 

@Controller
public class UserController {
	@Autowired
	 DwrService dwrService;
	@Autowired
	AdminEditService adminEditService;
	
	@RequestMapping(value = "/process", method = RequestMethod.GET)
	public String login(HttpServletRequest request,ModelMap map){
		 HttpSession session=request.getSession();
		 session.setAttribute("lang", "E");
		 //for getting headline
		 List<NewsTitleCommand> newsTitleCommand= dwrService.getNewsHeadline(session.getAttribute("lang").toString());
	 //CurrUpdateCommand currCommand=adminEditService.getUserCurrencyData("CUR","A");
	//	 map.addAttribute("currCommand",currCommand);
			
		 map.addAttribute("newsTitleCommand",newsTitleCommand);
		 //for currency chat
		 List currencyDataString=new ArrayList();
		try {
			currencyDataString = ConvertURL.getContents();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 map.addAttribute("currencyDataString", currencyDataString);
			
		//for prayer data
		 IftharCommand prayerTime=adminEditService.getPrayerTime();
		  map.addAttribute("prayercommand", prayerTime);
		  //getting image for image panel
			List<String> imageFile=adminEditService.getImages();
			List<String> imageFileBan=adminEditService.getImagesBanner();
			map.addAttribute("imagecommand", imageFile);
			map.addAttribute("imagecommandBan", imageFileBan);
			//for oil graph
			 List oilDataList=dwrService.getOilPriceChat();
			 map.addAttribute("oilDataList", oilDataList);
			 
			return "index";
	}
	@RequestMapping(value = "/eContectUs")
	public String contectUs(){
		return "contectUs";
	}
	@RequestMapping(value = "/eBasicInformation")
	public String basicInformationOfOman(){
		return "basicInformation";
	}
	@RequestMapping(value = "/eGeoGraphicLoc")
	public String geographicLoc(){
		return "geoLocation";
	}
	@RequestMapping(value = "/eONA")
	public String omanNewsAgency(){
		return "ona";
	}
	@RequestMapping(value = "/eNationalFlag")
	public String nationalFlag(){
		return "nFlag";
	}
	@RequestMapping(value = "/omaniNewsPaper")
	public String omaniNewsPaper(){
		return "onp";
	}
	@RequestMapping(value = "/GulfNewsPaper")
	public String GulfNewsPaper(){
		return "gnp";
	}
	@RequestMapping(value = "/ArbicNewsPaper")
	public String ArbicNewsPaper(){
		return "anp";
	}
	@RequestMapping(value = "/ForeignNewsPaper")
	public String ForeignNewsPaper(){
		return "fnp";
	}
	@RequestMapping(value = "/ftp")
	public String ftp(){
	return "ftp";
	}

	@RequestMapping(value = "/rss")
	public String rssPage(){
	return "rss";
	}

	@RequestMapping(value = "/sabqServices")
	public String sabq(){
	return "sabq";
	}
	
	@RequestMapping(value = "/photoGallery")
	public String photoGallery(){
	return "photoGallery";
	}
	@RequestMapping(value = "/map")
	public String mapPage(){
	return "map";
	}

}
