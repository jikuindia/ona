package com.insync.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.insync.service.AdminEditService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "DispatcherServlet-servlet.xml"})
public class AdminEditServiceImplTest {

	@Autowired
	AdminEditService adminEditService;
	
	@Test
	public void testGetImages()
	{
		adminEditService.getImages();
		
	}
	

}
