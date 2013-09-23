package com.insync.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadCommand {
	 public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	private List<MultipartFile> files;

}
