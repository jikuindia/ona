package com.insync.service;

import java.util.List;

import com.insync.model.NewsAddCommand;
import com.insync.model.NewsTitleCommand;

public interface DwrService {
	
	public List<NewsTitleCommand> getNewsHeadline(String lang);
	public NewsTitleCommand getNewsDesc(String lang,long id);
	public List<String> getPhoto(String datepicker, String datepicker1);
    public String getCurrencyChat();
	List<NewsAddCommand> showTitle(String language);
	public List<String> getOilPriceChat();
	

}
