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
 * 目的：对比copyBook的sql文件，生成建表语句
 * */
public class CopyBookWithODS {
	//從第一行開始讀取
    private  int line = 1;
	public File getFile(String path) {
		File file = new File(path);
		return file;
	}
	
    private String getSplit(String charsString){
    	String lsString = null;
    	charsString = charsString.replace(".","").trim();
    	if (charsString.contains("DSB001")) {
    		lsString = charsString.replace("DSB001","").trim();
    	}else if (charsString.contains("DEVLYF")) {
    		lsString = charsString.replace("DEVLYF","").trim();
		}else {
			lsString = charsString;
		}
    	return lsString;
    }
    
    
    public File getConsoleFile(String fileName){
    	File file = new File(fileName);
    	if (!file.exists()) {
			try {
		file.createNewFile();
    	FileOutputStream outputStream = new FileOutputStream(file);
    	PrintStream stream = new PrintStream(outputStream);
    	System.setOut(stream);
    	//outputStream.close();
    	//stream.close();
        } catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
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
				if (lineString.contains("05") && !lineString.trim().contains("*") && !lineString.trim().contains("_05")) {
					lineString = getSplit(lineString.trim());
					lineString = lineString.replace(":", "").trim();
					String[] splited = lineString.split("\\s+");
					if (splited.length == 4 ) {
						if (splited[2].contains(",") && splited[2].contains("(")) {
							splited[2] =  splited[2] + splited[3];
							List<String> list = new ArrayList<String>();
					        for (int i=0; i<splited.length; i++) {
					            list.add(splited[i]);
					        }
					        list.remove(3); 
					        splited =  list.toArray(new String[1]); 
						}
					}
					if (splited[1].contains("_")) {
						String tabName = splited[1];
						//得到tabName去掉前三位结尾的字符，再去掉它，同时也去掉连字符
						tabName = tabName.split("\\_{1}")[0];
						splited[1] = splited[1].replaceFirst(tabName+"_", "").trim();
					}
					System.out.println(Arrays.deepToString(splited));
				}else if (lineString.contains("03") && !lineString.trim().contains("*") && !lineString.trim().contains("_03")) {
					lineString = getSplit(lineString.trim());
					lineString = lineString.replace(":", "").trim();
					//以空格作为分割符
					String[] splited = lineString.split("\\s+");
					if (splited.length == 4 ) {
						if (splited[2].contains(",") && splited[2].contains("(")) {
							splited[2] =  splited[2] + splited[3];
							List<String> list = new ArrayList<String>();
					        for (int i=0; i<splited.length; i++) {
					            list.add(splited[i]);
					        }
					        list.remove(3); 
					        splited =  list.toArray(new String[1]); 
						}
					}
					if (splited[1].contains("_")) {
						String tabName = splited[1];
						//得到tabName去掉前三位结尾的字符，再去掉它，同时也去掉连字符
						tabName = tabName.split("\\_{1}")[0];
						splited[1] = splited[1].replaceFirst(tabName+"_", "").trim();
					}
					System.out.println(Arrays.deepToString(splited));
				}else if (lineString.contains("01") && !lineString.trim().contains("*") && !lineString.trim().contains("_01")) {
					lineString = getSplit(lineString.trim());
					lineString = lineString.replaceFirst("R:","T:").trim();
					lineString = lineString.replace(":", "").trim();
					String[] splited = lineString.split("\\s+");
					System.out.println("DROP TABLE ODS."+splited[1]+";");
					System.out.println("CREATE TABLE ODS."+splited[1]+"(");
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
					// TODO Auto-generated catch block 
					e.printStackTrace();
				}	
			}
		}
	}
}
