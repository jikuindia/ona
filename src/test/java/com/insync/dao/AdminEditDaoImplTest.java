package com.insync.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.insync.model.NewsAddCommand;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "DispatcherServlet-servlet.xml"})
public class AdminEditDaoImplTest {

	@Autowired
	AdminEditDao adminEditDao;
	
	@Test
	public void testShowTitle()
	{
		List<NewsAddCommand> lists=	adminEditDao.showTitle("A");
		
		System.out.println(lists);
		for(NewsAddCommand data:lists){
			System.out.println(data.getTitle());
		}
	}
	

}
