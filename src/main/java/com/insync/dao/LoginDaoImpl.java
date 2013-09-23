package com.insync.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.insync.constant.QueryConstant;
import com.insync.model.Login;

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

	
}
