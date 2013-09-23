package com.insync.dao;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.insync.constant.QueryConstant;

public class UserEditDaoImpl extends JdbcDaoSupport implements UserEditDao {

	@Override
	public int storeEmail(String email) {
		return getJdbcTemplate().update(QueryConstant.storeEmail, new Object[]{email});
		
	}
	

}	