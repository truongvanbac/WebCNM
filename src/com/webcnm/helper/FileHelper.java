package com.webcnm.helper;

import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

public class FileHelper {

	public void uploadFile(boolean isMultipart, String DIR) {
		if(isMultipart) {
			 FileItemFactory factory = new DiskFileItemFactory();
		}
	}
}
