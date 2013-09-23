package com.insync.model;


public class NewsTitleCommand {
/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private String newsTitle;
private long id;
private String mainDesc;

public String getMainDesc() {
	return mainDesc;
}

public void setMainDesc(String mainDesc) {
	this.mainDesc = mainDesc;
}

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public String getNewsTitle() {
	return newsTitle;
}

public void setNewsTitle(String newsTitle) {
	this.newsTitle = newsTitle;
}
	
}
