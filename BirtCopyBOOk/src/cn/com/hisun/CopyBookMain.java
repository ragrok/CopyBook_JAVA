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
            	
            //接收shell脚本传递过来的参数
            String copyBookSql = args[0];
            String copyBookTxt = args[1];
            String copyBookPath = args[2];
            String dir_txt = args[3];
            String schema = args[4]; 
            
            //组合
            System.out.println("copyBookSql: "+copyBookSql);
            System.out.println("copyBookTxt: "+copyBookTxt);
            System.out.println("copyBook: "+copyBookPath);
            System.out.println("dir_txt: "+dir_txt);
            System.out.println("schema: "+schema);
            
//            String copyBookSql = "H:\\github\\Practice_JAVA\\DMTGEN2.SQL";
//            String copyBookTxt = "H:\\github\\Practice_JAVA\\DMTGEN2.txt";
//            String copyBookPath = "H:\\github\\Practice_JAVA\\CopyBook.txt";
//            String dir_txt = "H:\\github\\Practice_JAVA\\dict.dat";
//            String schema = "ODS";
            
         	ConverSqlToTxt sqlToTxt = new ConverSqlToTxt(); 
		    sqlToTxt.readBookFileByLine(copyBookSql,copyBookTxt);
		    CopyBookToSql sql = new CopyBookToSql();
		    sql.copyBookTosql(copyBookTxt,dir_txt,copyBookPath,schema);
		}
}
