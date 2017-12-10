package cn.com.hisun;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/*
 * author: lihongjian,20171208
 * 处理copyBook数据结构，转化为标准sql语句
 * */
public class CopyBookWithODS {
	//开始行数
    private  int line = 1;
	private  final  String treeNumber = "03";
	private  final  String fiveNumber = "05";
	private  final  String firstNumber = "01";
	private  final  String DsbNumber = "DSB001";
	private  final  String DevNumber = "DEVLYF";

	public File getFile(String path) {
		File file = new File(path);
		return file;
	}
	
    private String getSplit(String charsString){
    	String lsString = null;
    	charsString = charsString.replace(".","").trim();
    	if (charsString.contains(DsbNumber)) {
    		lsString = charsString.replace(DsbNumber,"").trim();
    	}else if (charsString.contains(DevNumber)) {
    		lsString = charsString.replace(DevNumber,"").trim();
		}else {
			lsString = charsString;
		}
    	return lsString;
    }
    
    
    public File getConsoleFile(String fileName){
    	File file = new File(fileName);
			try {
		file.createNewFile();
    	FileOutputStream outputStream = new FileOutputStream(file);
    	PrintStream stream = new PrintStream(outputStream);
    	System.setOut(stream);
        } catch (IOException e) {
			e.printStackTrace();
			}
    	return file;
    }
    
    
	public void readBookFileByLine(File file) {
        BufferedReader reader = null;
        String lineString = null; 
        try {
			reader = new BufferedReader(new FileReader(file));
				while ((lineString = reader.readLine()) != null ){
					lineString = lineString.trim();
				if (lineString.contains(treeNumber)){
					checkSqlTabFiled(lineString,treeNumber);
				}else if(lineString.contains(fiveNumber)){
					checkSqlTabFiled(lineString,fiveNumber);
				}else if(lineString.contains(firstNumber)){
					checkSqlTabName(lineString,firstNumber);
				}
				   line++;
			  } 
			       reader.close();	
		   } catch (FileNotFoundException e) {
			    e.printStackTrace();
		}catch (IOException e) {
			      e.printStackTrace();
		}finally{
			if (reader != null) {
				try {
					 reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}	
			}
		}
	}


	   private void checkSqlTabFiled(String lineChar,String number){
		       String str = null;
		   if (lineChar.contains(number) && !lineChar.trim().contains("_"+number) && !lineChar.trim().contains("*")){
			   str = getSplit(lineChar.trim());
			   str = str.replace(":", "").trim();
			   String[] splited = str.split("\\s+");
			   if (splited.length == 4 ) {
				   if (splited[2].contains(",") && splited[2].contains("(") && splited[3].contains(")")) {
					   splited[2] =  splited[2] + splited[3];
					   List<String> list = new ArrayList<String>();
					   for (int i=0; i<splited.length; i++) {
						   list.add(splited[i]);
					   }
					   //去掉第四位的数组
					   list.remove(3);
					   splited =  list.toArray(new String[1]);
				   }
			   }
			   if (splited[1].contains("_")) {
				   String tabName = splited[1];
				   //得到tabName截掉前三位的字符串
				   tabName = tabName.split("\\_{1}")[0];
				   splited[1] = splited[1].replaceFirst(tabName+"_", "").trim();
			   }
			     //输出数组
			   System.out.println(Arrays.toString(splited));
		   }
      }

        private  void checkSqlTabName(String lineChar,String number){
			    String str = null;
			if (lineChar.contains(number) && !lineChar.trim().contains("_"+number) && !lineChar.trim().contains("*")) {
				str = getSplit(lineChar.trim());
				str = str.replaceFirst("R:", "T:").trim();
				str = str.replace(":", "").trim();
				String[] splited = str.split("\\s+");
				System.out.println("DROP TABLE ODS." + splited[1] + ";");
				System.out.println("CREATE TABLE ODS." + splited[1] + "(");
			}
		}
}
