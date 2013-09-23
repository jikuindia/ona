package com.insync.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
		List<MultipartFile> files = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		try {
			Properties prop = new Properties();
			prop.load(FileUploadController.class.getClassLoader()
					.getResourceAsStream("imagepth.properties"));
			String saveDirectory = prop.getProperty("imagePath");

			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String dName = dateFormat.format(date);

			if (null != files && files.size() > 0) {
				for (MultipartFile multipartFile : files) {

					String fileName = multipartFile.getOriginalFilename();

					String fName = "(";
					String lName = ")";
					String jName = ".jpg";

					String finalName = fName + dName + lName + count + "A"
							+ jName;
					fileName = finalName;
					count++;
					fileNames.add(fileName);

					if (!multipartFile.getOriginalFilename().equals("")) {
						multipartFile.transferTo(new File(saveDirectory
								+ fileName));
					}

				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		int flag = adminEditService.storeImage(fileNames);
		map.addAttribute("files", fileNames);
		return "fileSuccess";
	}
}
