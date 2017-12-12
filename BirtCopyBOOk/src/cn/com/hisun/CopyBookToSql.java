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
 * @category 处理copyBook数据结构，处理转化之后的两个txt文件，比对之后，生成标准sql语句
 */
public class CopyBookToSql {
        
	private  final  String firstNumber = "01";
	private  final  String treeNumber = "03";
	private  final  String fiveNumber = "05";
	
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
			while((lineChar = txtReader1.readLine()) != null && txtReader1.readLine().length() > 0){
				txtLsit1.add(lineChar);
			}
			while((lineChar = txtReader2.readLine()) != null && txtReader2.readLine().length() > 0){
				txtLsit2.add(lineChar);
			}
			for(String txtStr: txtLsit1){
				StringBuilder builder = new StringBuilder();
			   for(String txtStr2 : txtLsit2){
				   String arry1[] = txtStr.split("!");
				   String arry2[] = txtStr2.split(",");
				   
				   if(arry1.length == 2 && arry1[0].equals(firstNumber) ){
					   builder.append(" DROP TABLE "+scheMa+"."+arry1[1]+";"+"\n");
					   builder.append(" CREATE TABLE "+scheMa+"."+arry1[1]+" (");
				   }else if (arry1.length == 3 && !arry1[0].equals(firstNumber)) {
					   if (arry1.equals(treeNumber) || arry1.equals(fiveNumber)) {
						  builder =  splitSql(arry1,arry2,builder); 
					   }else {
						System.out.println("警告！！！！这不是建表语句");
					}
				   }else if (arry1.length == 4 && !arry1[0].equals(firstNumber)) {
					   if (arry1.equals(treeNumber) || arry1.equals(fiveNumber)) {
						   builder =  splitSql(arry1,arry2,builder); 
						}else {
							System.out.println("警告！！！！这不是建表语句");
						}
				  }
			   }
			   writer.write(builder.toString());
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
	
	private StringBuilder splitSql(String[] arry1,String[] arr2,StringBuilder builder){
		return builder;
	}
}
