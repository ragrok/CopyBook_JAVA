package cn.com.hisun;

import java.io.File;

/*
 * author: lihongjian,20171208
 * 目的：对比copyBook的sql文件，生成建表语句
 * 
 * */

public class CopyBook {
        
	 public static void main(String[] args) {
		    CopyBookWithODS ods = new CopyBookWithODS();
		    File file = ods.getFile("I:\\IBSC_BOOK_1.sql");
		    ods.getConsoleFile("I:\\IBSC_BOOK_2.sql");
		    ods.readBookFileByLine(file);
		}
}
