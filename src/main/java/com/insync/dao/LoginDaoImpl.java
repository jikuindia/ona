package com.insync.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.insync.constant.QueryConstant;
import com.insync.model.CountryName;
import com.insync.model.Login;
import com.insync.model.OilPrice;

public class LoginDaoImpl extends JdbcDaoSupport implements LoginDao {
	public int getLogin(Login login){
//		return getJdbcTemplate().queryForInt(QueryConstant.loginSql,login.getuName(),login.getPassword());
		int flag=0;
		
		
		List<Login> login1 = (List<Login>) getJdbcTemplate().query( QueryConstant.loginSql, new Object[] { login.getUserName(),login.getPassword() }, new RowMapper() {
			public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
			Login login = new Login();
			login.setUserName(rs.getString(1));
			login.setPassword(rs.getString(2));
			return login; } });
		
		if(login1.size()>0&&login1!=null){
			flag=1;
		}
		
		return flag;
		
	}

	@Override
	public List<CountryName> getCountry() {
		List<CountryName> lists = (List<CountryName>) getJdbcTemplate().query(
				QueryConstant.getCountry,
				new ResultSetExtractor<List<CountryName>>() {
					public List<CountryName> extractData(ResultSet rs)
							throws SQLException, DataAccessException {
						List<CountryName> list=new ArrayList<CountryName>();
						
						while (rs.next()) {
							CountryName cname =  new CountryName();
							cname.setCountryName(rs.getString("COUNTRY"));
							cname.setOilPrice(rs.getDouble("OILPRICE"));
							list.add(cname);
						}
						return list;
					}

				});

		return lists;
	}


	public List<CountryName> getCountry(OilPrice oilPrice) {
		List<String> countries=oilPrice.getCountry();
		List<Double> currencies=oilPrice.getCurrency();
		int flag=0;
		getJdbcTemplate().execute("TRUNCATE TABLE INTERNET_OILPRICE");
		for(int i=0;i<countries.size();i++){
				flag=getJdbcTemplate().update(QueryConstant.storeOil,new Object[]{i+1,countries.get(i),currencies.get(i)});
		}
		
		
		List<CountryName> lists = (List<CountryName>) getJdbcTemplate().query(
				QueryConstant.getCountry,
				new ResultSetExtractor<List<CountryName>>() {
					public List<CountryName> extractData(ResultSet rs)
							throws SQLException, DataAccessException {
						List<CountryName> list=new ArrayList<CountryName>();
						
						while (rs.next()) {
							CountryName cname =  new CountryName();
							cname.setCountryName(rs.getString("COUNTRY"));
							cname.setOilPrice(rs.getDouble("OILPRICE"));
							list.add(cname);
						}
						return list;
					}

				});

		return lists;
		
		
		
	}


	public List<OilPrice> editCountry(OilPrice oilPrice) {
		// TODO Auto-generated method stub
		return null;
	}


	public int updateCountry(OilPrice oilPrice) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
