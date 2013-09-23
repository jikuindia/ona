package com.insync.service;

import java.util.List;

import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.NewsAddCommand;


public interface AdminEditService {

	int storeImage(List<String> imageNames);

	int iftharAdd(IftharCommand iftharCommand);

	int newsAdd(NewsAddCommand newsAddCommand);

	CurrUpdateCommand getCurrencyData(CurrUpdateCommand currUpdateCommand);
//	List<CurrUpdateCommand> getCurrencyData(CurrUpdateCommand currUpdateCommand);

	int updateCurrency(CurrUpdateCommand currUpdateCommand);

	int changePass(String password);

	List<NewsAddCommand> showTitle(String language);
	
	public CurrUpdateCommand getUserCurrencyData(String t_type,String t_lang);
		
	public	IftharCommand	getPrayerTime();

    public	List<String> getImages();
    NewsAddCommand retriveNews(Integer tnews,String lang);

	int newsUpdate(NewsAddCommand newsAddCommand);

	int newsArchive(Integer id,String lang);

	List<String> getImagesBanner();


}
