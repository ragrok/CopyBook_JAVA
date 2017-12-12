package cn.com.hisun;

import java.io.File;

public class CopyBookMain {
            public static void main(String[] args) {
		    //CopyBookWithODS ods = new CopyBookWithODS();
		   // File file = ods.getFile("E:\\git\\Practice_JAVA\\IBSC_BOOK_1.sql");
		    //ods.getConsoleFile("E:\\git\\Practice_JAVA\\IBSC_BOOK_2.sql");
		   // ods.readBookFileByLine(file);
		    CoverExcelToTxt excel = new CoverExcelToTxt();
		    excel.getConsoleFile("H:\\github\\Practice_JAVA\\IBSC_BOOK_3.sql");
		    File file1 = excel.getFile("H:\\github\\Practice_JAVA\\大新银行新核心系统项目_香港_数据字典_V2.07.xlsx");

		}
}
