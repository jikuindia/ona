package com.insync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.insync.dao.LoginDao;
import com.insync.model.CountryName;
import com.insync.model.Login;
import com.insync.model.OilPrice;

public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao loginDao;
	@Transactional
	public int getLogin(Login login) {
		return loginDao.getLogin(login);
	}
	@Transactional
	public List<CountryName> getCountry() {
		return loginDao.getCountry();
	}
	@Transactional
	public List<CountryName> getCountry(OilPrice oilPrice) {
		return loginDao.getCountry(oilPrice);
	}
	@Transactional
	public List<OilPrice> editCountry(OilPrice oilPrice) {
		return loginDao.editCountry(oilPrice) ;
	}
	@Override
	public int updateCountry(OilPrice oilPrice) {
		return loginDao.updateCountry(oilPrice);
	}

}
