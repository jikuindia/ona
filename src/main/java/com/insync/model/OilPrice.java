package com.insync.model;

import java.io.Serializable;
import java.util.List;

public class OilPrice implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String> country;
	private List<Double> currency;
	public List<String> getCountry() {
		return country;
	}
	public void setCountry(List<String> country) {
		this.country = country;
	}
	public List<Double> getCurrency() {
		return currency;
	}
	public void setCurrency(List<Double> currency) {
		this.currency = currency;
	}

}