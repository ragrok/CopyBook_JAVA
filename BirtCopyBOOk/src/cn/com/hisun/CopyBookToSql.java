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
	private final String fourNumber = "49";
	private  final  String PIC_X = "X";
	private  final  String PIC_N = "9";
	private  final  String PIC_M = "M";
	private  final  String PIC = "PIC";
	private  final  String DIC = "DIC";
	private  final  String KEY = "KEY";
	private  final  String PIC_S = "S9";
	private  final  String PIC_V = "V";
	
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
			
			while((lineChar = txtReader1.readLine()) != null && !txtReader1.readLine().equals("")){
				if (!lineChar.isEmpty()) {
					txtLsit1.add(lineChar.trim());
				}
			}
			while((lineChar = txtReader2.readLine()) != null && !txtReader2.readLine().equals("")){
				if (!lineChar.isEmpty()) {
					txtLsit2.add(lineChar.trim());
				}
			}
			
			
			for(String txtStr: txtLsit1){
				String arry1[] = txtStr.split("!");
				for(String txtStr2 : txtLsit2){
				    String arry2[] = txtStr2.split(",");
				   if(arry1[0].equals(firstNumber) ){
					   lineChar = "DROP TABLE "+scheMa+"."+arry1[1]+";"+" \n";
					   lineChar +="CREATE TABLE "+scheMa+"."+arry1[1]+" (";
				   }else if (arry1[0].equals(treeNumber) || arry1[0].equals(fiveNumber) || arry1[0].equals(fourNumber)) {
					       System.out.println("我进来了");
						   lineChar =  splitSql(arry1,arry2,lineChar); 
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
		
		if (arry1[0].equals(treeNumber) || arry1[0].equals(fourNumber)) {
           if (arry1[2].equals(PIC)) {
        	   //以X开头的
			if (arry1[3].startsWith(PIC_X)) {
				String number = getNumbers(arry1[3]);
				lineChar = arry1[1]+"\t"+"CHAR("+number+")"+"\t"+",";
			}else if(arry1[3].startsWith(PIC_S)){
				String number = getNumbers(arry1[3]);
				lineChar = arry1[1]+"\t"+"DEC("+number+",0)"+"\t"+",";
			}
			
		}else if (arry1[2].startsWith(DIC)) {
			  //第三个数中不带有逗号
			if (arry1[2].contains(",")) {
				String str = getTwoBranket(arry1[2])[0];
				System.out.println("我进来了");
				//匹配到某个关键字
				if (arry2[0].equals(str)) {
					 //X类型
					if (PIC_X.equals(arry2[1])) {
						lineChar = arry1[1]+"\t"+"CHAR ("+arry2[2]+")"+"\t"+",";
					}
					//N类型
					if (PIC_N.equals(arry2[1])) {
						lineChar = arry1[1]+"\t"+"DEC ("+arry2[2]+","+arry2[3]+")"+"\t"+",";
					}
					//M类型
					if (PIC_M.equals(arry2[1])) {
						int num = Integer.valueOf(arry2[2])*3;
						if (num >= 255) {
							lineChar = arry1[1]+"\t"+"VARCHAR ("+num+")"+"\t"+",";
						}else{
							lineChar = arry1[1]+"\t"+"CHAR ("+num+")"+"\t"+",";
						}
					}
					//V类型
					if (PIC_V.equals(arry2[1])) {
						int num = Integer.valueOf(arry2[2]);
						System.out.println("警告！！！！！这是"+PIC_V+"的情况");
						if (num >= 255) {
							lineChar = arry1[1]+"\t"+"VARCHAR ("+num+")"+"\t"+",";
						}else{
							lineChar = arry1[1]+"\t"+"CHAR ("+num+")"+"\t"+",";
						}
					}
				}
			  //第三个数带有逗号
			}else if (!arry1[2].contains(",")) {
				String str = getOneBranket(arry1[2]);
				//匹配到某个关键字
				if (arry2[0].equals(str)) {
					 //X类型
					if (PIC_X.equals(arry2[1])) {
						lineChar = arry1[1]+"\t"+"CHAR ("+arry2[2]+")"+"\t"+",";
					}
					//N类型
					if (PIC_N.equals(arry2[1])) {
						lineChar = arry1[1]+"\t"+"DEC ("+arry2[2]+","+arry2[3]+")"+"\t"+",";
					}
					//M类型
					if (PIC_M.equals(arry2[1])) {
						int num = Integer.valueOf(arry2[2])*3;
						if (num >= 255) {
							lineChar = arry1[1]+"\t"+"VARCHAR ("+num+")"+"\t"+",";
						}else{
							lineChar = arry1[1]+"\t"+"CHAR ("+num+")"+"\t"+",";
						}
					}
					//V类型
					if (PIC_V.equals(arry2[1])) {
						int num = Integer.valueOf(arry2[2]);
						System.out.println("警告！！！！！这是"+PIC_V+"的情况");
						if (num >= 255) {
							lineChar = arry1[1]+"\t"+"VARCHAR ("+num+")"+"\t"+",";
						}else{
							lineChar = arry1[1]+"\t"+"CHAR ("+num+")"+"\t"+",";
						}
					}
				 }
			  }
			
		   }
		}else if (arry1[0].equals(fiveNumber)) {
			if (arry1[2].equals(PIC)) {
	        	   //以X开头的
				if (arry1[3].startsWith(PIC_X)) {
					String number = getNumbers(arry1[3]);
					lineChar = arry1[1]+"\t"+"CHAR ("+number+")"+"\t"+",";
				}
			}else if (arry1[2].startsWith(DIC)) {
				  //第三个数中不带有逗号
				if (arry1[2].contains(",")) {
					String str = getTwoBranket(arry1[2])[0];
					//匹配到某个关键字
					if (arry2[0].equals(str)) {
						 //X类型
						if (PIC_X.equals(arry2[1])) {
							lineChar = arry1[1]+"\t"+"CHAR("+arry2[2]+")"+"\t"+",";
						}
						//N类型
						if (PIC_N.equals(arry2[1])) {
							lineChar = arry1[1]+"\t"+"DEC("+arry2[2]+","+arry2[3]+")"+"\t"+",";
						}
						//M类型
						if (PIC_M.equals(arry2[1])) {
							int num = Integer.valueOf(arry2[2])*3;
							if (num >= 255) {
								lineChar = arry1[1]+"\t"+"VARCHAR("+num+")"+"\t"+",";
							}else{
								lineChar = arry1[1]+"\t"+"CHAR("+num+")"+"\t"+",";
							}
						}
					}
				  //第三个数带有逗号
				}else if (!arry1[2].contains(",")) {
					String str = getOneBranket(arry1[2]);
					//匹配到某个关键字
					if (arry2[0].equals(str)) {
						 //X类型
						if (PIC_X.equals(arry2[1])) {
							lineChar = arry1[1]+"\t"+"CHAR("+arry2[2]+")"+"\t"+",";
						}
						//N类型
						if (PIC_N.equals(arry2[1])) {
							lineChar = arry1[1]+"\t"+"DEC("+arry2[2]+","+arry2[3]+")"+"\t"+",";
						}
						//M类型
						if (PIC_M.equals(arry2[1])) {
							int num = Integer.valueOf(arry2[2])*3;
							if (num >= 255) {
								lineChar = arry1[1]+"\t"+"VARCHAR("+num+")"+"\t"+",";
							}else{
								lineChar = arry1[1]+"\t"+"CHAR("+num+")"+"\t"+",";
							}
						}
					 }
				  }
			   }
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
    	oneChar = oneChar.replace("DIC(", "").trim();
    	oneChar = oneChar.replace(")", "").trim();
    	return oneChar;
    }
    
    private String[] getTwoBranket(String twoChar){
    	String[] split = new String[2];
    	twoChar = twoChar.replace("DIC(","").trim();
    	twoChar = twoChar.replace(")", "").trim();
    	split = twoChar.split(",");
    	return split;
    } 
}
