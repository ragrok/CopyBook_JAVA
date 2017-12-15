package cn.com.hisun;

import java.io.IOException;

/**
 * @author lihongjian,20171208
 * @category 此工具可以将主机的copyBook语句转化为标准的sql语句，可用于快速建厂
 * @category 使用java将copybook语句提取建表语句放在一个临时txt文件中，将数据字典的对比数据放在另一个临时txt文件中，再对比两者的差异，形成标准sql语句
 * @category 目前应用部门
 */
public class CopyBookMain {
            public static void main(String[] args) throws IOException {
         	ConverSqlToTxt sqlToTxt = new ConverSqlToTxt();
		    sqlToTxt.readBookFileByLine("H:\\github\\Practice_JAVA\\IBSC_BOOK_1.sql","H:\\github\\Practice_JAVA\\IBSC_BOOK_1.txt");
		    //CoverExcelToTxt excel = new CoverExcelToTxt();
			//excel.checkExcelValid("H:\\github\\Practice_JAVA\\大新银行新核心系统项目_香港_数据字典_V2.07.xlsx");
		    //excel.readerExcel("H:\\github\\Practice_JAVA\\大新银行新核心系统项目_香港_数据字典_V2.07.xlsx","H:\\github\\Practice_JAVA\\IBSC_BOOK_2.txt");
		    CopyBookToSql sql = new CopyBookToSql();
		    sql.copyBookTosql("H:\\github\\Practice_JAVA\\IBSC_BOOK_1.txt","H:\\github\\Practice_JAVA\\dict.dat"
		    	//	,"H:\\github\\Practice_JAVA\\SQL\\","ODS");
		    		,"H:\\github\\Practice_JAVA\\IBSC_BOOK_2.sql","ODS");
		}
}
