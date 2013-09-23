package com.insync.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "DispatcherServlet-servlet.xml"})
public class UserEditDaoImplTest {

	@Autowired
	UserEditDao userEditDao;
	
	@Test
	public void testStoreEmail()
	{
		int flag=userEditDao.storeEmail("A");
		
		System.out.println(flag);
	}
	

}
