package cn.com.hisun;

import java.io.File;

/*
 * author: lihongjian,20171208
 * 处理copyBook数据结构，转化为标准sql语句
 * */

public class CopyBook {
        
	 public static void main(String[] args) {
		    //CopyBookWithODS ods = new CopyBookWithODS();
		    //File file = ods.getFile("E:\\git\\Practice_JAVA\\IBSC_BOOK_1.sql");
		    //ods.getConsoleFile("E:\\git\\Practice_JAVA\\IBSC_BOOK_2.sql");
		    //ods.readBookFileByLine(file);
		      ReaderExcel excel = new ReaderExcel();
		      File file = excel.getFile("E:\\git\\Practice_JAVA\\大新银行新核心系统项目_香港_数据字典_V2.07.xlsx");
		      excel.readerExcel(file,"E:\\git\\Practice_JAVA\\excel.txt");
		}
}
