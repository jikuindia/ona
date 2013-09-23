package com.insync.model;

import java.util.Date;

public class NewsAddCommand {
	private Integer srno;
	private String newsLang;
	private String newsCat;
	private Date date;
	private String title;
	private String newsHomePage;
	private String status;
	private String newsDesHom ;
	private String newsDesMan;
	public Integer getSrno() {
		return srno;
	}
	public void setSrno(Integer srno) {
		this.srno = srno;
	}
	public String getNewsLang() {
		return newsLang;
	}
	public void setNewsLang(String newsLang) {
		this.newsLang = newsLang;
	}
	public String getNewsCat() {
		return newsCat;
	}
	public void setNewsCat(String newsCat) {
		this.newsCat = newsCat;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNewsHomePage() {
		return newsHomePage;
	}
	public void setNewsHomePage(String newsHomePage) {
		this.newsHomePage = newsHomePage;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNewsDesHom() {
		return newsDesHom;
	}
	public void setNewsDesHom(String newsDesHom) {
		this.newsDesHom = newsDesHom;
	}
	public String getNewsDesMan() {
		return newsDesMan;
	}
	public void setNewsDesMan(String newsDesMan) {
		this.newsDesMan = newsDesMan;
	}
	
	
}
