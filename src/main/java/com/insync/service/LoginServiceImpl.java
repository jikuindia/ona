package com.insync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.insync.dao.LoginDao;
import com.insync.model.Login;

public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao loginDao;
	@Transactional
	public int getLogin(Login login) {
		return loginDao.getLogin(login);
	}

}
