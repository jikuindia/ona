package com.insync.dao;

import java.util.Date;
import java.util.List;

import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.NewsAddCommand;
import com.insync.model.NewsTitleCommand;


public interface AdminEditDao {

	int storeImage(List<String> fileNames);

	int iftharAdd(IftharCommand iftharCommand);

	int newsAdd(NewsAddCommand newsAddCommand);

	CurrUpdateCommand getCurrencyData(String t_lang,String t_type);

	int updateCurrency(CurrUpdateCommand currUpdateCommand,String t_type, String t_lang);

	int changePass(String password);

	List<NewsAddCommand> showTitle(String language);

	NewsAddCommand retriveNews(Integer tnews,String lang);

	int newsUpdate(NewsAddCommand newsAddCommand);

	int newsArchive(Integer id,String lang);
	IftharCommand showPrayerTime(Date minDate,Date maxDate);

	List<String> showImageFile(String dt);

	List<String> serchImages(String date1,String date2);

}
