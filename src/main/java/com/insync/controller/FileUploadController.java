package com.insync.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.insync.model.FileUploadCommand;
import com.insync.service.AdminEditService;

@Controller
public class FileUploadController {
	@Autowired
	private AdminEditService adminEditService;

	static int count = 1;

	@RequestMapping(value = "/multiShow", method = RequestMethod.GET)
	public String displayForm() {
		return "fileUpload";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(
			@ModelAttribute("uploadForm") FileUploadCommand uploadForm,
			Model map) {
		String folder=uploadForm.getPicture();
		List<MultipartFile> files = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		try {
			Properties prop = new Properties();
			prop.load(FileUploadController.class.getClassLoader()
					.getResourceAsStream("imagepth.properties"));
			String saveDirectory = prop.getProperty("imagePath");

			Calendar cal = new GregorianCalendar();
			String dt = "";
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) + 1;
			int day = cal.get(Calendar.DAY_OF_MONTH);
			dt = "" + day + "" + month + "" + year;
			
			if("M".equals(folder)){
			String pict=saveDirectory+dt+"/mainpic/";
			File path=new File(pict);
			path.mkdirs();
			path.createNewFile();
			
			if (null != files && files.size() > 0) {
				for (MultipartFile multipartFile : files) {

					String fileName = multipartFile.getOriginalFilename();
					if (!multipartFile.getOriginalFilename().equals("")) {
						multipartFile.transferTo(new File(pict
								+ fileName));
					}

				}
			}
			}else{
				
				String pict=saveDirectory+dt+"/subpic/";
				File path=new File(pict);
				path.mkdirs();
				path.createNewFile();
				
				if (null != files && files.size() > 0) {
					for (MultipartFile multipartFile : files) {

						String fileName = multipartFile.getOriginalFilename();
						if (!multipartFile.getOriginalFilename().equals("")) {
							multipartFile.transferTo(new File(pict
									+ fileName));
						}

					}
				
			}
			}
		} catch (IOException e) {
			e.printStackTrace();
			String messagePhoto="Sorry to upload...";
			map.addAttribute("messagePhoto", messagePhoto);
		}
			String messagePhoto="Successfully picture uploaded";
			map.addAttribute("messagePhoto", messagePhoto);
		
		return "fileUpload";
	}
}
