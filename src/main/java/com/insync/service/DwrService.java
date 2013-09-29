package com.insync.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.insync.model.NewsAddCommand;
import com.insync.model.NewsTitleCommand;

public interface DwrService {
	
	public List<NewsTitleCommand> getNewsHeadline(String lang);
	public NewsTitleCommand getNewsDesc(String lang,long id);
	public List<String> getPhoto(String datepicker, String datepicker1);
    public List getCurrencyChat();
	List<NewsAddCommand> showTitle(String language);
	public List<String> getOilPriceChat();
	public String getSubscribe(String name,String phone,String email,String address,String subtype) throws SQLException;

}
