package com.insync.service;

import java.util.List;

import com.insync.model.CountryName;
import com.insync.model.Login;
import com.insync.model.OilPrice;

public interface LoginService {

	public int getLogin(Login login);

	public List<CountryName> getCountry();

	public List<CountryName> getCountry(OilPrice oilPrice);

	public List<OilPrice> editCountry(OilPrice oilPrice);

	public int updateCountry(OilPrice oilPrice);
}
