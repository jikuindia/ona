package com.insync.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.insync.constant.CommonMethods;
import com.insync.constant.QueryConstant;
import com.insync.model.CurrUpdateCommand;
import com.insync.model.IftharCommand;
import com.insync.model.NewsAddCommand;

public class AdminEditDaoImpl extends JdbcDaoSupport implements AdminEditDao {

	public int storeImage(List<String> imageNames) {
		int flag=0;
		for (String imageName : imageNames) {
			
//			Date date=getJdbcTemplate().queryForObject("select sysdate from dual",Date.class);
//			System.out.println(date);
		flag=getJdbcTemplate().update(QueryConstant.imageSql,
					new Object[] {imageName});
		}
		return flag;
	}
	public int iftharAdd(IftharCommand iftharCommand) {
		int flag = getJdbcTemplate().update(
				QueryConstant.storePrayer,
				new Object[] { iftharCommand.getPrayer1(),
						iftharCommand.getPrayer2(), iftharCommand.getPrayer3(),
						iftharCommand.getPrayer4(), iftharCommand.getPrayer5(),
						iftharCommand.getDate() });

		return flag;
	}

	public int newsAdd(NewsAddCommand newsAddCommand) {
		int flag = 0;
		String language = newsAddCommand.getNewsLang();
		if ("A".equals(language)) {
			flag = getJdbcTemplate().update(
					QueryConstant.newsArbian,
					new Object[] { newsAddCommand.getTitle(),
							newsAddCommand.getStatus(),
							newsAddCommand.getNewsHomePage(),
							CommonMethods.convertStringToHex(newsAddCommand.getNewsDesHom()),
							CommonMethods.convertStringToHex(newsAddCommand.getNewsDesMan()),
							newsAddCommand.getDate(),
							newsAddCommand.getNewsCat() });
		} else {
			flag = getJdbcTemplate().update(
					QueryConstant.newsEnglish,
					new Object[] { newsAddCommand.getTitle(),
							newsAddCommand.getStatus(),
							newsAddCommand.getNewsHomePage(),
							CommonMethods.convertStringToHex(newsAddCommand.getNewsDesHom()),
							CommonMethods.convertStringToHex(newsAddCommand.getNewsDesMan()),
							newsAddCommand.getDate(),
							newsAddCommand.getNewsCat() });
		}

		return flag;
	}

	public CurrUpdateCommand getCurrencyData(String t_lang, String t_type) {

		CurrUpdateCommand curr1 = (CurrUpdateCommand) getJdbcTemplate().query(
				QueryConstant.curEng, new Object[] { t_lang, t_type },
				new ResultSetExtractor() {
					public CurrUpdateCommand extractData(ResultSet rs)
							throws SQLException, DataAccessException {
						CurrUpdateCommand curr = null;
						while (rs.next()) {
							curr = new CurrUpdateCommand();
							curr.setHomedesc(rs.getString("HOME_DESC"));
							curr.setMaindesc(rs.getString("MAIN_DESC"));
						}
						return curr;
					}

				});

		return curr1;
	}

	public int updateCurrency(CurrUpdateCommand currUpdateCommand,
			String t_type, String t_lang) {
		getJdbcTemplate().update(
				QueryConstant.curUpdate,
				new Object[] { currUpdateCommand.getHomedesc(),
						currUpdateCommand.getMaindesc(), t_type, t_lang });
		int flag = getJdbcTemplate().update(
				QueryConstant.curHisInsert,
				new Object[] { currUpdateCommand.getHomedesc(),
						currUpdateCommand.getMaindesc(), t_type, t_lang });
		return flag;
	}

	public int changePass(String password) {

		return getJdbcTemplate().update(QueryConstant.changePass,
				new Object[] { password });
	}

	@Override
	public List<NewsAddCommand> showTitle(String language) {
		
		String sql=QueryConstant.displayTitleAra;
		if("E".equals(language)){
			sql=QueryConstant.displayTitleEng;
		}

		List<NewsAddCommand> lists = (List<NewsAddCommand>) getJdbcTemplate().query(
				sql,
				new ResultSetExtractor<List<NewsAddCommand>>() {
					public List<NewsAddCommand> extractData(ResultSet rs)
							throws SQLException {
						NewsAddCommand newsTitle = null;
						List<NewsAddCommand> list = new ArrayList<NewsAddCommand>();
						while (rs.next()) {
							newsTitle =new NewsAddCommand();
							newsTitle.setTitle(rs.getString("TITLE"));
							newsTitle.setSrno(rs.getInt("SR_NO"));
							list.add(newsTitle);
						}
						return list;
					}
				});

		return lists;

	}
	

	@Override
	public IftharCommand showPrayerTime(String dt) {
		IftharCommand prayer= getJdbcTemplate().query(QueryConstant.prayerTime,new Object[]{dt}, 
				
				new ResultSetExtractor<IftharCommand>() {
			public IftharCommand extractData(ResultSet rs)
					throws SQLException, DataAccessException {
				IftharCommand pyrtime = null;
				while (rs.next()) {
					 pyrtime =new IftharCommand();
					pyrtime.setPrayer1(rs.getString("TIME1"));
					pyrtime.setPrayer2(rs.getString("TIME2"));
					pyrtime.setPrayer3(rs.getString("TIME3"));
					pyrtime.setPrayer4(rs.getString("TIME4"));
					pyrtime.setPrayer5(rs.getString("TIME5"));
				}
				return pyrtime;
			}

		});
				
		return prayer;
	}
	@Override
	public List<String> showImageFile(String dt) {
		//sFileUploadCommand imagefile=getJdbcTemplate().query(QueryConstant.imageFile, )
		// TODO Auto-generated method stub
		 List<String> imagelist = getJdbcTemplate().query(QueryConstant.imageFile,new Object[]{dt},
				 
				new ResultSetExtractor<List<String>>(){
			 public  List<String> extractData(ResultSet rs)throws SQLException, DataAccessException {
				 List<String> list=new ArrayList<String>();
				 while (rs.next()) {
					 list.add(rs.getString("IMG_URL"));
			 }
				 return list;
			 			
		 }
			 
			});
					
			return imagelist;
		}

	@Override
	public List<String> serchImages(String date1,String date2) {
		// TODO Auto-generated method stub
		List<String> imagelist = getJdbcTemplate().query(QueryConstant.serchPhoto,new Object[]{date1,date2},
				 
				new ResultSetExtractor<List<String>>(){
			 public  List<String> extractData(ResultSet rs)throws SQLException, DataAccessException {
				 List<String> list=new ArrayList<String>();
				 while (rs.next()) {
					 list.add(rs.getString("IMG_URL"));
			 }
				 return list;
			 			
		 }
			 
			});
					
			return imagelist;
	}
	
	@Override
	public NewsAddCommand retriveNews(Integer tnews,String lang) {
		
		String sql=QueryConstant.retrieveNewsARB;
		if("E".equals(lang)){
			sql=QueryConstant.retrieveNewsENG;
		}
		
		NewsAddCommand newsAddCommand=getJdbcTemplate().query(sql,new Object[]{tnews},new  ResultSetExtractor<NewsAddCommand>() {
			public NewsAddCommand extractData(ResultSet rs)
					throws SQLException {
				NewsAddCommand newsTitle = null;
				while (rs.next()) {
					newsTitle =new NewsAddCommand();
					newsTitle.setSrno(rs.getInt("SR_NO"));
					newsTitle.setTitle(rs.getString("TITLE"));
					newsTitle.setStatus(rs.getString("NEWS_STATUS").trim());
					newsTitle.setNewsHomePage(rs.getString("HOME_DISPLAY").trim());
					newsTitle.setNewsDesHom(CommonMethods.convertHexToString(rs.getString("HOME_DESC")));
					newsTitle.setNewsDesMan(CommonMethods.convertHexToString(rs.getString("MAIN_DESC")));
					newsTitle.setDate(rs.getDate("NEWS_DATE"));
					newsTitle.setNewsCat(rs.getString("NEWS_CAT").trim());
				
				}
				return newsTitle;
			}
		});

return newsAddCommand;
	}

	@Override
	public int newsUpdate(NewsAddCommand newsAddCommand) {
		String sql=QueryConstant.updateNewARB;
		if("E".equals(newsAddCommand.getNewsLang())){
			sql=QueryConstant.updateNewENG;
		}
		int flag=getJdbcTemplate().update(sql, new Object[]{newsAddCommand.getTitle(),newsAddCommand.getStatus(),newsAddCommand.getNewsHomePage(),CommonMethods.convertStringToHex(newsAddCommand.getNewsDesHom()),CommonMethods.convertStringToHex(newsAddCommand.getNewsDesMan()),newsAddCommand.getDate(),newsAddCommand.getNewsCat(),newsAddCommand.getSrno()});
		return flag;
	}

	@Override
	public int newsArchive(Integer id,String lang) {
		String sql=QueryConstant.changeStatusARB;
		if("E".equals(lang)){
			sql=QueryConstant.changeStatusENG;
		}
		
		
		return getJdbcTemplate().update(sql,new Object[]{id});
	}

}
