package com.insync.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.insync.constant.CommonMethods;
import com.insync.dao.AdminEditDao;
import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.NewsAddCommand;

public class AdminEditServiceImpl implements AdminEditService {
	@Autowired
	private AdminEditDao adminEditDao;

	@Transactional
	public int storeImage(List<String> imageNames) {
		return adminEditDao.storeImage(imageNames);
	}

	@Transactional
	public int iftharAdd(IftharCommand iftharCommand) {
		return adminEditDao.iftharAdd(iftharCommand);
	}

	@Transactional
	public int newsAdd(NewsAddCommand newsAddCommand) {
		return adminEditDao.newsAdd(newsAddCommand);
	}
	@Transactional
	public CurrUpdateCommand getCurrencyData(CurrUpdateCommand currUpdateCommand) {
		 String categ="";
			String t_type="";
			  String t_lang="";
			  categ =currUpdateCommand.getCateg();
			  t_type=categ.substring(0, categ.indexOf("-"));
			  t_lang=categ.substring(categ.indexOf("-")+1,categ.length());
		
			  CurrUpdateCommand setCat=adminEditDao.getCurrencyData(t_type,t_lang) ;
			  setCat.setCateg(categ);
		return setCat;
			//  return adminEditDao.currUpdate();
	}
	@Transactional
	public int updateCurrency(CurrUpdateCommand currUpdateCommand) {
		 String categ="";
			String t_type="";
			  String t_lang="";
			  categ =currUpdateCommand.getCateg();
			  t_type=categ.substring(0, categ.indexOf("-"));
			  t_lang=categ.substring(categ.indexOf("-")+1,categ.length());
		
		return adminEditDao.updateCurrency(currUpdateCommand,t_type,t_lang) ;
	}
	@Transactional
	public int changePass(String password) {
		return adminEditDao.changePass(password);
	}

	@Transactional
	public List<NewsAddCommand> showTitle(String language) {
		return adminEditDao.showTitle(language);
	}
	
	public CurrUpdateCommand getUserCurrencyData(String t_type,String t_lang) {
		CurrUpdateCommand currUpdateCommand =adminEditDao.getCurrencyData(t_type,t_lang) ;
		String mainDesc=CommonMethods.convertHexToString(currUpdateCommand.getMaindesc());
		String homeDesc=CommonMethods.convertHexToString(currUpdateCommand.getHomedesc());
		currUpdateCommand.setHomedesc(homeDesc);
		currUpdateCommand.setMaindesc(mainDesc);
		return currUpdateCommand;
	}
	@Transactional
	public IftharCommand getPrayerTime() {
		Calendar cal = new GregorianCalendar();
		String dt = "";
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		dt = "" + month + "-" + day + "-" + year;

		// TODO Auto-generated method stub
		return adminEditDao.showPrayerTime(dt);
	}

	@Override
	public List<String> getImages() {
		// TODO Auto-generated method stub
		List<String> imagePathList=new ArrayList<String>();
		Calendar cal = new GregorianCalendar();
		String dt = "";
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		dt = "" + day + "" + month + "" + year;
		Properties prop = new Properties();
		try {
			prop.load(AdminEditServiceImpl.class.getClassLoader()
					.getResourceAsStream("imagepth.properties"));
		
		String imageDirectory = prop.getProperty("imagePath");
		String imagePath=imageDirectory+dt+"/subpic";
		File folder = new File(imagePath);
		if(folder.exists()){
		// gets you the list of files at this folder
		File[] listOfFiles = folder.listFiles();
		// loop through each of the files looking for filenames that match
		for(int i = 0; i < listOfFiles.length; i++){
		    String filename = listOfFiles[i].getName();
		        System.out.println(filename);
		        imagePathList.add(dt+"/subpic/"+filename);
		    }
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// TODO Auto-generated method stub
		//return adminEditDao.showImageFile(dt);
		
		
		
		if (imagePathList.size() == 0) {

			try {
				prop.load(AdminEditServiceImpl.class.getClassLoader()
						.getResourceAsStream("imagepth.properties"));

				String imageDirectory = prop.getProperty("imagePath");
				// String mainpic = prop.getProperty("mainpic.folder");
				String subpic = prop.getProperty("subpic.folder");
				String imagePath = imageDirectory + "default" + "/subpic";
				File folder = new File(imagePath);
				if(folder.exists()){
				// gets you the list of files at this folder
				File[] listOfFiles = folder.listFiles();
				// loop through each of the files looking for filenames that
				// match
				for (int i = 0; i < listOfFiles.length; i++) {
					String filename = listOfFiles[i].getName();
					System.out.println(filename);
					imagePathList.add("default" + "/subpic/" + filename);
				}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		return imagePathList;
	}
	
	
	
	public List<String> getImagesBanner() {
		// TODO Auto-generated method stub
		List<String> imagePathList=new ArrayList<String>();
		Calendar cal = new GregorianCalendar();
		String dt = "";
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		dt = "" + day + "" + month + "" + year;
		Properties prop = new Properties();
		try {
			prop.load(AdminEditServiceImpl.class.getClassLoader()
					.getResourceAsStream("imagepth.properties"));
		
		String imageDirectory = prop.getProperty("imagePath");
		String mainpic = prop.getProperty("mainpic.folder");
		String imagePath=imageDirectory+dt+"/mainpic";
		File folder = new File(imagePath);
		if(folder.exists()){
		// gets you the list of files at this folder
		File[] listOfFiles = folder.listFiles();
		// loop through each of the files looking for filenames that match
		for(int i = 0; i < listOfFiles.length; i++){
		    String filename = listOfFiles[i].getName();
		        System.out.println(filename);
		        imagePathList.add(dt+"/mainpic/"+filename);
		    }
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// TODO Auto-generated method stub
		//return adminEditDao.showImageFile(dt);
		
		if(imagePathList.size()==0){
			
						try {
				prop.load(AdminEditServiceImpl.class.getClassLoader()
						.getResourceAsStream("imagepth.properties"));
			
			String imageDirectory = prop.getProperty("imagePath");
			String mainpic = prop.getProperty("mainpic.folder");
			String imagePath=imageDirectory+"default"+"/mainpic";
			File folder = new File(imagePath);
			if(folder.exists()){
			// gets you the list of files at this folder
			File[] listOfFiles = folder.listFiles();
			// loop through each of the files looking for filenames that match
			for(int i = 0; i < listOfFiles.length; i++){
			    String filename = listOfFiles[i].getName();
			        System.out.println(filename);
			        imagePathList.add("default"+"/mainpic/"+filename);
			    }
			}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


			
		}
		
		
		
		return imagePathList;
	}

	
	
	
	
	
	@Transactional
	public NewsAddCommand retriveNews(Integer tnews,String lang) {
		return adminEditDao.retriveNews(tnews,lang);
	}

	@Transactional
	public int newsUpdate(NewsAddCommand newsAddCommand) {
		return adminEditDao.newsUpdate(newsAddCommand);
	}
	@Transactional
	public int newsArchive(Integer id,String lang) {
		return adminEditDao.newsArchive(id,lang);
	}
}
