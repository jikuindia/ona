package com.insync.service;

import java.io.File;
import java.io.FileInputStream;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;

import com.insync.constant.CommonMethods;
import com.insync.dao.AdminEditDao;
import com.insync.dao.UserDao;
import com.insync.model.NewsAddCommand;
import com.insync.model.NewsTitleCommand;
import com.insync.util.Mail;

public class DwrServiceImpl implements DwrService {
	@Autowired
	UserDao userDao;
	@Autowired
	AdminEditDao adminEditDao;

	private DataFormatter formatter = new DataFormatter();
	private DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");

	public List<NewsTitleCommand> getNewsHeadline(String lang) {
		return userDao.getNewsHeadline(lang);
	}

	public List<NewsAddCommand> showTitle(String language) {
		return adminEditDao.showTitle(language);
	}

	public NewsTitleCommand getNewsDesc(String lang, long id) {
		NewsTitleCommand newsTitleCommand = userDao.getNewsDesc(lang, id);
		String mainDesc = CommonMethods.convertHexToString(newsTitleCommand
				.getMainDesc());
		newsTitleCommand.setMainDesc(mainDesc);

		return newsTitleCommand;
	}

	public List<String> getPhoto(String toDate, String fromDa) {
		List<String> searchPictList=new ArrayList<String>();
		List<Date> dates = new ArrayList<Date>();
		String str_date =toDate;
		String end_date = fromDa;
		DateFormat formatter;
		Date startDate =null;
		Date endDate =null;
		formatter = new SimpleDateFormat("dd/mm/yyyy");
		try{
		 startDate = (Date) formatter.parse(str_date);
		 endDate = (Date) formatter.parse(end_date);
		}catch(Exception e){
			e.printStackTrace();
		}
		long interval = 24 * 1000 * 60 * 60;
		long endTime = endDate.getTime();
		long curTime = startDate.getTime();
		System.out.println(curTime);
		
		while (curTime <= endTime) {
			long ctime=curTime;
			
			dates.add(new Date(curTime));
			curTime += interval;
		}
		System.out.println(dates.size());
		for (int i = 0; i < dates.size(); i++) {
			Date lDate = (Date) dates.get(i);
			String ds = formatter.format(lDate);
			System.out.println(" Date is ..." + ds);
			 String year=ds.substring(0,2);
			 String month=ds.substring(3, 5);
			 String day=ds.substring(6,10);
			String dt=year+month+day;
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
			for(int j = 0; j < listOfFiles.length; j++){
			    String filename = listOfFiles[j].getName();
			        System.out.println(filename);
			        searchPictList.add(dt+"/subpic/"+filename);
			    }
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
				return searchPictList;
	}

	public String getCurrencyChat() {
		StringBuffer currencyData = new StringBuffer("[");
		Properties prop = new Properties();
		try {
			prop.load(DwrServiceImpl.class.getClassLoader()
					.getResourceAsStream("imagepth.properties"));
		
			FileInputStream file = new FileInputStream(new File( prop.getProperty("currency.file.path")));

			// Get the workbook instance for XLS file
			XSSFWorkbook workbook = new XSSFWorkbook(file);

			// Get first sheet from the workbook
			XSSFSheet sheet = workbook.getSheetAt(0);

			// Get iterator to all the rows in current sheet
			Iterator<Row> rowIterator = sheet.iterator();

			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();
				String retVal1 = "";
				String retVal2 = "";
				System.out.println(row.getRowNum());
				Cell cell1 = row.getCell(0);
				Cell cell2 = row.getCell(1);
				if (cell1 != null && cell2 != null) {
					switch (cell1.getCellType()) {
					case Cell.CELL_TYPE_NUMERIC:
						retVal1 = isNumberOrDate(cell1);
						break;

					}

					switch (cell2.getCellType()) {
					case Cell.CELL_TYPE_NUMERIC:
						retVal2 = isNumberOrDate(cell2);
						break;

					}
					   if(retVal1!="" && retVal2 != "")
						currencyData.append("['").append(retVal1).append("',")
								.append(retVal2).append("]").append(",");

				}

			}
			currencyData.deleteCharAt(currencyData.lastIndexOf(","));
			currencyData.append("]");
			currencyData.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return currencyData.toString();

	}
		
	public List<String> getOilPriceChat() {
		StringBuffer countryList = new StringBuffer("[");
		StringBuffer priceList = new StringBuffer("[");
		List<String> oilDataList=new ArrayList<String>();
		Properties prop = new Properties();
			try {
				prop.load(DwrServiceImpl.class.getClassLoader()
						.getResourceAsStream("imagepth.properties"));
			
			FileInputStream file = new FileInputStream(new File( prop.getProperty("oil.file.path")));

			// Get the workbook instance for XLS file
			XSSFWorkbook workbook = new XSSFWorkbook(file);

			// Get first sheet from the workbook
			XSSFSheet sheet = workbook.getSheetAt(0);

			// Get iterator to all the rows in current sheet
			Iterator<Row> rowIterator = sheet.iterator();

			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();
				String retVal1 = "";
				String retVal2 = "";
				System.out.println(row.getRowNum());
				Cell cell1 = row.getCell(0);
				Cell cell2 = row.getCell(1);
				if (cell1 != null && cell2 != null && row.getRowNum()!=0) {
					switch (cell1.getCellType()) {
					case Cell.CELL_TYPE_NUMERIC:
						retVal1 = isNumberOrDate(cell1);
						break;
					case Cell.CELL_TYPE_STRING:
						retVal1 = cell1.getStringCellValue();
						break;

					}

					switch (cell2.getCellType()) {
					case Cell.CELL_TYPE_NUMERIC:
						retVal2 = isNumberOrDate(cell2);
						break;
					case Cell.CELL_TYPE_STRING:
						retVal2 = cell2.getStringCellValue();
						break;

					}
					   if(retVal1!="")
						   countryList.append("'").append(retVal1).append("',");
					   if(retVal2!="")
						   priceList.append(retVal2).append(",");
				}

			}
			countryList.deleteCharAt(countryList.lastIndexOf(","));
			countryList.append("]");
			priceList.deleteCharAt(priceList.lastIndexOf(","));
			priceList.append("]");
			oilDataList.add(countryList.toString());
			oilDataList.add(priceList.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return oilDataList;

	}
	
	
	public void getSubscribe(String email) throws SQLException{
        int flag=userDao.storeEmail(email);
        Mail mail=new Mail();
        mail.sendMailToUser(email);
        
}
	

	private String isNumberOrDate(Cell cell) {
		String retVal;
		if (HSSFDateUtil.isCellDateFormatted(cell)) {
			retVal = dateFormat.format(cell.getDateCellValue());

		} else {
			retVal = formatter.formatCellValue(cell);
		}
		return retVal;
	}
}
