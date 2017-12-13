package cn.com.hisun;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * @author lihongjian,20171208
 * @category 处理copyBook数据结构，抽取copybook表中的原始结构，放在一个临时txt文件中，等待CopyBookToSql处理
 */

public class ConverSqlToTxt {
	
	//开始行数
	private  final  String treeNumber = "03";
	private  final  String fiveNumber = "05";
	private  final  String firstNumber = "01";
	private  final  String DsbNumber = "DSB001";
	private  final  String DevNumber = "DEVLYF";

   
	
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
    
          
        /**
         * @param 读取Excel，将需要的数据逐行抽取到临时txt文件
         * @param writeFile
         */
	public void readBookFileByLine(String readerFile,String writeFile) {
        BufferedReader reader = null;
        BufferedWriter writer = null;
        String str = ""; 
        String lineStr = "";
        try {
			reader = new BufferedReader(new FileReader(readerFile));
			writer = new BufferedWriter(new FileWriter(writeFile));
				while ((str = reader.readLine()) != null ){
					str = str.trim();
				//if (str.startsWith(treeNumber) && !str.trim().contains("*")){
					//lineStr = checkSqlTabFiled(str,treeNumber);
				//}else if(str.startsWith(fiveNumber) && !str.trim().contains("*")){
					//lineStr = checkSqlTabFiled(str,fiveNumber);
				//}else if(str.startsWith(firstNumber) && !str.contains("*")){
					//lineStr = checkSqlTabName(str,firstNumber);
				//}
				if (str.startsWith(treeNumber) || str.startsWith(fiveNumber) || str.startsWith(firstNumber) && !str.contains("*")) {
					lineStr = str;
					if (str.startsWith(treeNumber) || str.startsWith(fiveNumber) && !str.contains("*")) {
						lineStr = checkSqlTabName(str,firstNumber);
					}
				}
				
				writer.write(lineStr);
				writer.newLine();
				lineStr = "";
			  } 
		   } catch (Exception e) {
			    e.printStackTrace();
		}finally{
			if (reader != null) {
				try {
					 reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}	
			}
			if (writer != null) {
				try {
					writer.flush();
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}	
			}
		}
	}
      
	/**
	 * @param 处理03和05开头的字符串
	 * @param number 
	 * @return 符合规范的字符串
	 */
	private String checkSqlTabFiled(String lineChar,String number){
		       String str = "";
		       
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
			   
			   if (splited.length == 2) {
				   str = splited[0]+"!"+splited[1];
			}else if (splited.length == 3) {
				str = splited[0]+"!"+splited[1]+"!"+splited[2];
			}else if (splited.length == 4) {
				str = splited[0]+"!"+splited[1]+"!"+splited[2]+"!"+splited[3];
			}
			     
		   System.out.println("checkSqlTabFiled"+str);
		   return str;
      }
         
        /**
         * @param lineChar 行数
         * @param number  需要处理的数据开头字符
         * @return   符合规范的字符
         */
        private  String checkSqlTabName(String lineChar,String number){
			    String str = "";
			    System.out.println("table line"+lineChar);
			if (lineChar.startsWith(number) && !lineChar.contains("*")) {
				str = getSplit(lineChar.trim());
				str = str.replaceFirst("R:", "T:").trim();
				str = str.replace(":", "").trim();
				String[] splited = str.split("\\s+");
				str = splited[0]+"!"+splited[1];
			}
			System.out.println("checkSqlTabName"+str);
			return str;
		}
        
        
}
