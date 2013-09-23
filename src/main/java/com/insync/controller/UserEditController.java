package com.insync.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.insync.service.UserEditService;
import com.insync.util.Mail;
@Controller
public class UserEditController {
	@Autowired
	private UserEditService userEditService;
	
	@RequestMapping(value = "/subcribe", method = RequestMethod.GET)
	public String subcribe(/*@RequestParam()String email*/) throws SQLException{
		String email1="pati.goutam88@gmail.com";
		int flag=userEditService.storeEmail(email1);
		Mail mail=new Mail();
		boolean f=mail.sendMailToUser(email1);
		if(f){
			return "mailSuccess";
		}
		return "mailFailure";
	}
}
