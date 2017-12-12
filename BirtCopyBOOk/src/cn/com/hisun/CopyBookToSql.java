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
					txtLsit1.add(lineChar);
				}
			}
			while((lineChar = txtReader2.readLine()) != null ){
				if (!lineChar.isEmpty()) {
					txtLsit2.add(lineChar);
				}
			}
			
			for(String txtStr: txtLsit1){
				String arry1[] = txtStr.split("!");
			   //System.out.println(Arrays.toString(arry1));
				for(String txtStr2 : txtLsit2){
				    String arry2[] = txtStr2.split(",");
				    //System.out.println(Arrays.toString(arry1));
				   if(arry1.length == 2 && arry1[0].equals(firstNumber) ){
					   lineChar = " DROP TABLE "+scheMa+"."+arry1[1]+";"+" \n";
					   lineChar +=" CREATE TABLE "+scheMa+"."+arry1[1]+" (";
				   }else if (arry1.length == 3 && !arry1[0].equals(firstNumber)) {
					   //System.out.println(arry1.length+arry1.toString());
					   if (arry1[0].equals(treeNumber) || arry1[0].equals(fiveNumber)) {
						   System.out.println(arry1.length+Arrays.toString(arry1));
						  lineChar =  splitSql(arry1,arry2,lineChar); 
					   }else {
						//System.out.println("警告！！！！这不是建表语句");
					}
				   }else if (arry1.length == 4 && !arry1[0].equals(firstNumber)) {
					   //System.out.println(arry1.length+Arrays.toString(arry1));
					   if (arry1[0].equals(treeNumber) || arry1[0].equals(fiveNumber)) {
						   System.out.println(arry1.length+arry1.toString());
						   lineChar =  splitSql(arry1,arry2,lineChar); 
						}else {
							//System.out.println("警告！！！！这不是建表语句");
						}
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
			if (treeNumber.equals(arry1[0]) && arry1[2].contains(arry2[0])) {
				if (arry2.length == 3) {
					if (arry2[1].contains(PIC_X)) {
						String number = getNumbers(arry2[2]);
						lineChar = " "+arry1[1]+"\t"+"CAHR("+number+")"+" ,";
					}else if (arry2[1].contains(PIC_N)) {
						String number = arry2[2];
						lineChar = " "+arry1[1]+"\t"+"DEC("+number+",0)"+" ,";
					}else if (arry2[1].contains(PIC_M)) {
						int number = Integer.valueOf(getNumbers(arry2[2]));
						lineChar = " "+arry1[1]+"\t"+"CAHR("+(number*3)+")"+" ,";
					}
				}else if (arry2.length == 4) {
					if (arry2[1].contains(PIC_X)) {
						String number = getNumbers(arry2[2]);
						lineChar = " "+arry1[1]+"\t"+"CAHR("+number+")"+" ,";
					}else if (arry2[1].contains(PIC_N)) {
						String number = arry2[2];
						String douNumber = arry2[3];
						lineChar = " "+arry1[1]+"\t"+"DEC("+number+","+douNumber+")"+",";
					}else if (arry2[1].contains(PIC_M)) {
						int number = Integer.valueOf(getNumbers(arry2[2]));
						lineChar = " "+arry1[1]+"\t"+"CAHR("+(number*3)+")"+" ,";
					}
				}
			}
		}else if (arry1.length == 4) {
			 //PIC的情况 
			if (PIC.equals(arry1[2])) {
				if (arry1[3].contains(PIC_X)) {
					String number = getNumbers(arry1[3]);
					lineChar = " "+arry1[1]+"\t"+"CAHR("+number+")"+" ,";
				}else if (arry1[3].contains(PIC_N)) {
					
					String number = arry1[3].replaceAll("PIC_N", ""); 
					       number = getNumbers(number);
					lineChar = " "+arry1[1]+"\t"+"DEC("+number+",0)"+" ,";
				}else if (arry1[3].contains(PIC_M)) {
					int number = Integer.valueOf(getNumbers(arry1[3]));
					lineChar = " "+arry1[1]+"\t"+"CAHR("+(number*3)+")"+" ,";
				}
				
			}else if (arry1.length == 5) {
				
			}else {
				System.out.println("暂时空着");
			}
		}
		System.out.println("lineChar:"+lineChar.toString());
		return lineChar;
	}
	
    public String getNumbers(String content) {  
        Pattern pattern = Pattern.compile("\\d+");  
        Matcher matcher = pattern.matcher(content);  
        while (matcher.find()) {  
            return matcher.group(0);  
        }  
        return "";  
    } 
}
