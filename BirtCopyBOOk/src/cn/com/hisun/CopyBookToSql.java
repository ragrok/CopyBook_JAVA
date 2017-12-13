package cn.com.hisun;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author lihongjian,20171208
 * @category 处理copyBook数据结构，处理转化之后的两个txt文件，比对之后，生成标准sql语句
 */

public class CopyBookToSql {
        
	private  final  String firstNumber = "01";
	private  final  String treeNumber = "03";
	private  final  String fiveNumber = "05";
	private  final  String PIC_X = "X";
	private  final  String PIC_N = "9";
	private  final  String PIC_M = "M";
	private  final  String PIC = "PIC";
	private  final  String DIC = "DIC";
	private  final  String KEY = "KEY";
	
	 /**
	 * @param txtPath1       第一个txt文件地址
	 * @param txtPath2        第二个txt文件地址
	 */
	public void copyBookTosql(String txtPath1,String txtPath2,String sqlPath,String scheMa){
		 BufferedWriter writer = null;
		 BufferedReader txtReader1 = null;
		 BufferedReader txtReader2 = null;
		 List<String> txtLsit1 = null;
		 List<String> txtLsit2 = null;
		 
		 try {
			String lineChar = null; 
			txtReader1 = new BufferedReader(new FileReader(txtPath1));
			txtReader2 = new BufferedReader(new FileReader(txtPath2));
            writer = new BufferedWriter(new FileWriter(sqlPath));
			txtLsit1 = new ArrayList<String>();
			txtLsit2 = new ArrayList<String>();
			while((lineChar = txtReader1.readLine()) != null ){
				if (!lineChar.isEmpty()) {
					txtLsit1.add(lineChar.trim());
				}
			}
			while((lineChar = txtReader2.readLine()) != null ){
				if (!lineChar.isEmpty()) {
					txtLsit2.add(lineChar.trim());
				}
			}
			
			for(String txtStr: txtLsit1){
				String arry1[] = txtStr.split("!");
				for(String txtStr2 : txtLsit2){
				    String arry2[] = txtStr2.split(",");
				   if(arry1.length == 2 && arry1[0].equals(firstNumber) ){
					   lineChar = " DROP TABLE "+scheMa+"."+arry1[1]+";"+" \n";
					   lineChar +=" CREATE TABLE "+scheMa+"."+arry1[1]+" (";
				   }else if ((arry1.length == 3 || arry1.length == 4) && !arry1[0].equals(firstNumber)) {
					   if (arry1[0].equals(treeNumber) || arry1[0].equals(fiveNumber)) {
						   System.out.println(Arrays.toString(arry1)+"==="+Arrays.toString(arry2));
						   lineChar =  splitSql(arry1,arry2,lineChar); 
					   }
				   }else {
					System.out.println("这些都是不符合建表的情况");
				 }
			   }
			   writer.write(lineChar);
			   lineChar = "";
			   writer.newLine();
			}
		} catch (Exception e) {
			// TODO: handle exception
		//关闭资源	
		}finally {
			if (txtReader1 != null) {
				try {
					txtReader1.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
           }
			
			if (txtReader2 != null) {
				try {
					txtReader2.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
           }
			
        	if (writer != null) {
				try {
                    writer.flush(); 					
					writer.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			   }	
			}
		}
	 }
	
	//
	/**
	 * @param arry1  存放表中字段的数据，以03和05开头，长度在3和4之间
	 * @param arr2     存放数据字典的对应表类型的数据，DIC需要参考数据字典，PIC不需要参考数据字典，直接拿就行
	 * @param builder
	 * @return
	 */
	private String splitSql(String[] arry1,String[] arry2,String lineChar){
		if (arry1.length == 3) {
			if (treeNumber.equals(arry1[0])) {
				 //数组中含DIC开头，并且括号中有两个数		
				if (arry1[2].contains(DIC) && arry1[2].contains(",")) {
					String[] lineStr = getTwoBranket(arry2[2]);
				     	
				 //数组中含DIC开头，并且括号中只有一个数	
		     }else if (arry1[2].contains(DIC) && !arry1[2].contains(",")) {
						
		       }
			 }else if (fiveNumber.equals(arry1[0])) {
			  }
		}else if (arry1.length == 4) {
			 //第三个数为PIC的情况 ，现在只有这一种情况
			if (PIC.equals(arry1[2])) {
				System.out.println("PIC:"+Arrays.toString(arry1));
				if (arry1[3].startsWith(PIC_X)) {
					String xString = getNumbers(arry1[3]);
					lineChar = " "+arry1[1];
				}
			}
			return lineChar;
		}else {
			System.out.println("这些都是异常情况");
		}
		System.out.println("lineChar:"+lineChar);
		return lineChar;
	}
	
    private String getNumbers(String content) {  
        Pattern pattern = Pattern.compile("\\d+");  
        Matcher matcher = pattern.matcher(content);  
        while (matcher.find()) {  
            return matcher.group(0);  
        }  
        return "";  
    } 
    
    private String getOneBranket(String oneChar){
    	if (oneChar.contains(DIC+"(")) {
    		oneChar = oneChar.replace("DIC(", "").trim();
    		oneChar = oneChar.replace(")", "").trim();
		}
    	System.out.println("oneChar:"+oneChar);
    	return oneChar;
    }
    
    private String[] getTwoBranket(String twoChar){
    	String[] split = new String[2];
    	if (twoChar.contains(DIC)) {
    		twoChar = twoChar.replace("DIC(","").trim();
    		System.out.println("one twoChar"+twoChar);
    		twoChar = twoChar.replace(")", "").trim();
    		System.out.println("two twoChar"+twoChar);
    		split = twoChar.split(",");
		}
    	System.out.println("split.list:"+Arrays.toString(split));
    	return split;
    } 
}
