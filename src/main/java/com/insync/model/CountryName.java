package com.insync.model;

import java.io.Serializable;

public class CountryName implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String countryName;
	private Double oilPrice;

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public Double getOilPrice() {
		return oilPrice;
	}

	public void setOilPrice(Double oilPrice) {
		this.oilPrice = oilPrice;
	}

}
