package com.insync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.insync.dao.UserEditDao;


public class UserEditServiceImpl implements UserEditService {
	@Autowired
	private UserEditDao userEditDao;

	@Transactional
	public int storeEmail(String email) {
		// TODO Auto-generated method stub
		return userEditDao.storeEmail(email);
	}
}