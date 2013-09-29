package com.insync.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.insync.constant.QueryConstant;
import com.insync.model.CountryName;
import com.insync.model.NewsTitleCommand;

public class UserDaoImpl extends JdbcDaoSupport implements UserDao {

	public List<NewsTitleCommand> getNewsHeadline(String language) {

		Calendar cal = new GregorianCalendar();
		String dt = "";
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		dt = "" + month + "-" + day + "-" + year;
		
		String sql = QueryConstant.getTitleAra;
		if ("E".equals(language)) {
			sql = QueryConstant.getTitleEng;
		}

		List<NewsTitleCommand> lists = (List<NewsTitleCommand>) getJdbcTemplate().query(sql,new Object[] {dt},
				new ResultSetExtractor<List<NewsTitleCommand>>() {
					public List<NewsTitleCommand> extractData(ResultSet rs)
							throws SQLException {
						NewsTitleCommand newsTitle = null;
						List<NewsTitleCommand> list = new ArrayList<NewsTitleCommand>();
						while (rs.next()) {
							newsTitle = new NewsTitleCommand();
							newsTitle.setId(rs.getLong("SR_NO"));
							newsTitle.setNewsTitle(rs.getString("TITLE"));
							list.add(newsTitle);
						}
						return list;
					}
				});

		return lists;
	}
	
	public NewsTitleCommand getNewsDesc(String lang,long id)
	{
		String sql = QueryConstant.getNewsDescArb;
		if ("E".equals(lang)) {
			sql = QueryConstant.getNewsDescEng;
		}

		NewsTitleCommand newsTitle = (NewsTitleCommand) getJdbcTemplate().query(sql,new Object[] {id},
				new ResultSetExtractor<NewsTitleCommand>() {
					public NewsTitleCommand extractData(ResultSet rs)
							throws SQLException {
						NewsTitleCommand newsTitle = null;
							while (rs.next()) {
							newsTitle = new NewsTitleCommand();
							newsTitle.setMainDesc(rs.getString("MAIN_DESC"));
							newsTitle.setNewsTitle(rs.getString("TITLE"));
							
						}
						return newsTitle;
					}
				});

		return newsTitle;
	}
	

		public List<CountryName> getOilPriceChat(){

		List<CountryName> lists = (List<CountryName>) getJdbcTemplate().query(
		QueryConstant.getCountry,
		new ResultSetExtractor<List<CountryName>>() {
		public List<CountryName> extractData(ResultSet rs)
		throws SQLException, DataAccessException {
		List<CountryName> list=new ArrayList<CountryName>();

		while (rs.next()) {
		CountryName cname = new CountryName();
		cname.setCountryName(rs.getString("COUNTRY"));
		cname.setOilPrice(rs.getDouble("OILPRICE"));
		list.add(cname);
		}
		return list;
		}

		});

		return lists;

		}

		@Override
		public int storeEmail(String name, String phone, String email1,
				String address, String subtype) {
			// TODO Auto-generated method stub
			int flag1 = 0;
			//String success="";

			Boolean flag2=getJdbcTemplate().query(QueryConstant.retrieveEmail, new Object[]{email1},
					new ResultSetExtractor<Boolean>() {
						Boolean flag = false;
						
						@Override
						public Boolean extractData(ResultSet rs)	
								throws SQLException {
							while (rs.next()) {
								flag = true;
							}
							return flag;
						}

					});
			if (flag2 == false) {
				flag1 = getJdbcTemplate().update(
						QueryConstant.storeEmail,
						new Object[] { name, phone, email1,
								address, subtype });
			}
			
			return flag1;
		}


}
