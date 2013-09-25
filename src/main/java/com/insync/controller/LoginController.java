package com.insync.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.insync.model.CountryName;
import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.Login;
import com.insync.model.NewsAddCommand;
import com.insync.model.OilPrice;
import com.insync.service.AdminEditService;
import com.insync.service.LoginService;
@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private AdminEditService adminEditService;

	@RequestMapping(value = "/loginAdmin", method = RequestMethod.GET)
	public String loginAdmin(){
		return "indexAdmin";
	}
	
	@RequestMapping(value = "/ifthaar", method = RequestMethod.GET)
	public String ifthaar(){
		return "ifthaar";
	}
	
	@RequestMapping(value = "/pictAdd", method = RequestMethod.GET)
	public String addPicture(){
		return "pictureAdd";
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.GET)
	public String changePassword(){
		return "changePassword";
	}
	
	
	@RequestMapping(value = "/sendPassword", method = RequestMethod.POST)
	public String changePass(ModelMap map,@RequestParam()String password){
		
		
		try{
			int flag=adminEditService.changePass(password);
			if(flag>0){
			String	passchange="Password Successfully Changed";
			map.addAttribute("password", passchange);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "changePassword";
	}
	
@RequestMapping(value="/currentUpdate")	
	public String currUpdate(ModelMap map){
		CurrUpdateCommand currUpdateCommand=new CurrUpdateCommand();
		map.addAttribute("currUpdateCommand",currUpdateCommand);
		return "updateWeather";
	}

@RequestMapping(value="/addOilPrice")
public String oilPriceDisplay(ModelMap map){
	List<CountryName> lists=loginService.getCountry();
	
	map.addAttribute("lists",lists);
	return "updateWeather";
}

@RequestMapping(value="/addCountryPrice")
public String addCountryPrice(ModelMap map,@ModelAttribute("oilPrice") OilPrice oilPrice){
	System.out.println(oilPrice);
	List<CountryName> lists=loginService.getCountry(oilPrice);
	map.addAttribute("lists",lists);
	if(lists.size()>0){
		String success="Successfully added";
		map.addAttribute("addoil",success );
	}else{
		String success="Sorry to add...";
		map.addAttribute("addoil",success );
	}
	return "updateWeather";
}

@RequestMapping(value="/editCountryPrice")
public String editCountryPrice(ModelMap map,@ModelAttribute("oilPrice") OilPrice oilPrice){
	List<OilPrice> list=loginService.editCountry(oilPrice);
	
	return "updateWeather";
}


@RequestMapping(value="/editCountryPrice")
public String updateCountryPrice(ModelMap map,@ModelAttribute("oilPrice") OilPrice oilPrice){
	int flag=loginService.updateCountry(oilPrice);
	
	return "updateWeather";
}



	 
	@SuppressWarnings("deprecation")
	//@RequestMapping(value="/showCurrencyUpdateData")
	@RequestMapping(value = "/edit")
	public String currEdit(ModelMap map,@RequestParam()String categ ){
		System.out.println(categ);
		System.out.println("edit controller");
		CurrUpdateCommand currUpdateCommand=null;
//		currUpdateCommand=adminEditService.getCurrencyData(currUpdateCommand);
		map.addObject("currcommand", currUpdateCommand);
		System.out.println(currUpdateCommand.getHomedesc());
		System.out.println(currUpdateCommand.getMaindesc());
		return "updateWeather";
	}
	
	
	@RequestMapping(value = "/update")
	public String currUpdate(ModelMap map,@ModelAttribute("currUpdateCommand")CurrUpdateCommand currUpdateCommand ){
		String success="Successfully update....";
		String failure="Failure to update....";
		map.addAttribute("result",success);
		int flag=adminEditService.updateCurrency(currUpdateCommand);
		if(flag==0){
			map.addAttribute("result", failure);
		}
		System.out.println(currUpdateCommand.getHomedesc());		
		return "adminSuccess";
	}
	
	@RequestMapping(value = "/displayNews")
	public String displayNews(){
		return "newsDisplay";
	}
	
	
	@RequestMapping(value = "/addNewsDisplay")
	public String adddNews(){
		return "newsAdd";
	}

	
	@RequestMapping(value = "/displayTitle")
	public String displayTitle(ModelMap map,@RequestParam()String language){
		List<NewsAddCommand> lists=adminEditService.showTitle(language);
		map.addAllAttributes(lists);
		return "displayTitle";
	}
	
	
	@RequestMapping(value = "/addNews")
	public String displayNews(ModelMap map,@ModelAttribute("newsAddCommand") NewsAddCommand newsAddCommand){
		String incorrect="Enter correct Data";	
		if(!newsAddCommand.equals(null)){
		
			
			
		String success="News added Successfully";
		String failure="Opps,Something goes wrong.Please contact to your administator";
		int flag=adminEditService.newsAdd(newsAddCommand);
		if(flag==0){
			map.addAttribute("addnewssuccess", failure);
		}else{
			map.addAttribute("addnewssuccess", success);
		}
		}else{
			map.addAttribute("incorrect", incorrect);
			return "newsAdd";
		}
		return "newsAdd";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAdmin(){
		return "indexAdmin";
	}
	
	@RequestMapping(value = "/ifthaarsave", method = RequestMethod.POST)
	public String iftharadd(ModelMap map,@ModelAttribute("iftharCommand")IftharCommand iftharCommand){
		System.out.println(iftharCommand.getPrayer1());
		String iftaar="Enter correct Data";
		if(!iftharCommand.equals(null)){
		String success="Successfully added";
		String failure="Sorry,Failure to added";
		map.addAttribute("result", success);
		
		int flag=adminEditService.iftharAdd(iftharCommand);
		if(flag!=0&&flag>0){
			map.addAttribute("addifhaar",success);
		}
		else{
			map.addAttribute("addifhaar",failure);
		}
		}else{
			map.addAttribute("iftaar", iftaar);
			return "ifthaar";
		}
		
		return "ifthaar";
	}
	 
	@RequestMapping(value = "/send", method = RequestMethod.POST)
	public String login(ModelMap map,@ModelAttribute("loginPage")Login loginPage){
		
		
	
		 String status="adminSuccess";
		int flag=loginService.getLogin(loginPage);
		if(flag == 0){
			String message="Invalid password or username";
			status="indexAdmin";
			map.addAttribute("result", message);
		}
		return status;
	}
	
	@RequestMapping(value = "/newsUpdate")
	public String newsUpdate(ModelMap map,@RequestParam()Integer tnews,String newsCat,String lang,String date,String title,String newsHomePage,String status,String newsDesHom,String newsDesMan) throws ParseException{
		DateFormat df =df=new SimpleDateFormat("dd/MM/yyyy");
		 Date today = df.parse(date);
		NewsAddCommand newsAdd=new NewsAddCommand();
		newsAdd.setSrno(tnews);
		newsAdd.setNewsCat(newsCat);
		newsAdd.setNewsLang(lang);
		newsAdd.setDate(today);
		newsAdd.setTitle(title);
		newsAdd.setNewsHomePage(newsHomePage);
		newsAdd.setStatus(status);
		newsAdd.setNewsDesHom(newsDesHom);
		newsAdd.setNewsDesMan(newsDesMan);
		String success="Successfully Updated";
		String failure="Sorry,Failure to Update";
		String upnews="Enter correct Data";
		map.addAttribute("result", success);
		if(!newsAdd.equals(null)){
		int flag=adminEditService.newsUpdate(newsAdd);
		
		if(flag!=0&&flag>0){
			map.addAttribute("newsupdate", success);
		}else{
			map.addAttribute("newsupdate", failure);
		}
		}else{
			map.addAttribute("upnews", upnews);
			return "newsDisplay";
		}
		return "newsDisplay";
	}
	
	
	@RequestMapping(value = "/newsArchive")
	public String newsArchive(ModelMap map,@RequestParam()Integer tnews,String lang){
		
		String success="Successfully Archived";
		String failure="Sorry,Failure to archived";
		map.addAttribute("result", success);
		int flag=adminEditService.newsArchive(tnews,lang);
		if(flag!=0&&flag>0){
			map.addAttribute("arsucess", success);
		}else{
			map.addAttribute("arsucess", failure);
		}
		return "newsDisplay";
	}
	
	@RequestMapping(value = "/newsRetrive")
	public String displayTitle(ModelMap map,@RequestParam()Integer tnews,String lang){
		System.out.println(tnews);
		System.out.println(lang);
		NewsAddCommand newsDisplay=adminEditService.retriveNews(tnews,lang);
    	newsDisplay.setNewsLang(lang);
		System.out.println(newsDisplay.getNewsCat());
		System.out.println(newsDisplay.getNewsDesHom());
		map.addAttribute("newsDisplay",newsDisplay);
		return "displayTitle";
	}
	
	 
}
