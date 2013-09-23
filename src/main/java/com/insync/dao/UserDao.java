package com.insync.dao;

import java.util.List;

import com.insync.model.NewsTitleCommand;

public interface UserDao {
	
	
	public List<NewsTitleCommand> getNewsHeadline(String lang);
	public NewsTitleCommand getNewsDesc(String lang,long id);
	public int storeEmail(String email1);
	 

}
