package cn.com.hisun;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;




/**
 * @author lihongjian, 20171208
 * @category 处理copyBook数据结构，抽取copybook表中的原始结构，放在一个临时txt文件中，等待CopyBookToSql处理
 */

public class ConverSqlToTxt {

    //开始行数
    private final String Num_One = "01";
    private final String Num_Three = "03";
    private final String Num_Five = "05";
    private final String Num_Seven = "07";
    private final String Num_Four_Nine = "49";
    private final String DevNumber = "DEVLYF";
    private final String Comp = "COMP";
    private final String Comp3 = "COMP_3";
    private final String Dsb_001 = "DSB001";
    private final String Dsb_002 = "DSB002";
    private final String Dsb_003 = "DSB003";
    private final String Dsb_004 = "DSB004";
    private final String Dsb_005 = "DSB005";
    private final String Dsb_006 = "DSB006";
    private final String Dsb_007 = "DSB007";
    private final String Dsb_008 = "DSB008";
    private final String Dsb_009 = "DSB009";
    private final String KEY = "KEY";
    private final String Redefines="REDEFINES";

    //去掉每行的水牌和最后的点
    private String getSplit(String charsString) {
        String lsString = "";
        //去掉最后的·
        lsString = charsString.trim().replace(".", "").trim();
        //去掉水牌
        if (lsString.startsWith(DevNumber)) {
            lsString = lsString.replace(DevNumber, "").trim();
        }
        if (lsString.startsWith(Dsb_001)) {
            lsString = lsString.replace(Dsb_001, "").trim();
        }
        if (lsString.startsWith(Dsb_002)) {
            lsString = lsString.replace(Dsb_002, "").trim();
        }
        if (lsString.startsWith(Dsb_003)) {
            lsString = lsString.replace(Dsb_003, "").trim();
        }
        if (lsString.startsWith(Dsb_004)) {
            lsString = lsString.replace(Dsb_004, "").trim();
        }
        if (lsString.startsWith(Dsb_005)) {
            lsString = lsString.replace(Dsb_005, "").trim();
        }
        if (lsString.startsWith(Dsb_006)) {
            lsString = lsString.replace(Dsb_006, "").trim();
        }
        if (lsString.startsWith(Dsb_007)) {
            lsString = lsString.replace(Dsb_007, "").trim();
        }
        if (lsString.startsWith(Dsb_008)) {
            lsString = lsString.replace(Dsb_009, "").trim();
        }
        if (lsString.startsWith(Dsb_009)) {
            lsString = lsString.replace(Dsb_009, "").trim();
        }
        if (lsString.endsWith(Comp)) {
            lsString = lsString.replace(Comp, "").trim();
        }
        if (lsString.endsWith(Comp3)) {
            lsString = lsString.replace(Comp3, "").trim();
        }
        
        return lsString;
    }


    /**
     * @param readerFile 读取Excel，将需要的数据逐行抽取到临时txt文件
     * @param writeFile
     */
	public void readBookFileByLine(String readerFile, String writeFile) {
		BufferedReader reader = null;
		BufferedWriter writer = null;
		FileReader fileReader = null;
		FileWriter fileWriter = null;
		String linestr = "";
		String lineStr = "";
		List<String> keyList = null;
		List<String> txtLsit1 = null;
		boolean startFlag = false;
		boolean endFlag = false;
		boolean redefStartFlag = false;
		int lineInt = 0;
		try {
			fileReader = new FileReader(readerFile);
			reader = new BufferedReader(fileReader);
			fileWriter = new FileWriter(writeFile);
			writer = new BufferedWriter(fileWriter);
			txtLsit1 = new ArrayList<String>();
			keyList = new ArrayList<String>();

            while ((linestr = reader.readLine()) != null) {
            	  if (!linestr.isEmpty()) {
					txtLsit1.add(linestr.trim());
				}
            }
            //在末尾添加一个数据，防止最后一个key为空
            txtLsit1.add("01 TA:BLE:.");
            
            for(String str  : txtLsit1){
            	//对头部进行处理
                if (str.startsWith(Num_One) && str.endsWith(".") && !str.contains("*")) {
                    lineInt++;
                    lineStr = getSplit(str);
                    lineStr = checkSqlTabName(lineStr, keyList, lineInt);
                    startFlag = false;
                    endFlag = false;
                    redefStartFlag = false;
                    //对字段进行处理
                } else if ((str.startsWith(Num_Five) || str.startsWith(Num_Four_Nine) || str.startsWith(Num_Three) 
                		|| str.startsWith(Num_Seven) ) && str.endsWith(".") && !str.contains("*")) {
                    lineStr = getSplit(str);
                    startFlag = checkTabKeyStart(lineStr,startFlag);
                    endFlag = checkTabKeyEnd(lineStr,endFlag);
                    redefStartFlag = checkRedefStart(lineStr, redefStartFlag);
                    redefStartFlag = checkRedefEnd(lineStr, redefStartFlag);
                    lineStr = checkSqlTabFiled(lineStr,redefStartFlag);
                    keyList = getKeys(lineStr, (ArrayList<String>) keyList,startFlag,endFlag);
                }
                writer.write(lineStr);
                writer.newLine();
                lineStr = "";
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

		    if (reader != null) {
                try {
                	reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            
            if (writer != null) {
                try {
                	writer.close();
                    fileWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    /**
     * @param lineChar 处理03和05开头的字符串
     * @return 符合规范的字符串
     */
    private String checkSqlTabFiled(String lineChar,boolean stFlag) {
        String str = "";

        String[] splited = lineChar.split("\\s+");
        if (splited[1].contains(":")) {
            splited[1] = splited[1].replace(":", "").trim();
        }

        //去掉第二个数开头的表名
        if (splited[1].contains("_")) {
            String tabName = splited[1];
            //得到tabName截掉前三位的字符串
            tabName = tabName.split("\\_{1}")[0];
            splited[1] = splited[1].replaceFirst(tabName + "_", "").trim();
        }

        if (splited.length == 4) {
            if (splited[2].contains(",") && splited[2].contains("(") && splited[3].contains(")")) {
                splited[2] = splited[2] + splited[3];
                List<String> list = new ArrayList<String>();
                for (int i = 0; i < splited.length; i++) {
                    list.add(splited[i]);
                }
                //去掉第四位的数组
                list.remove(3);
                splited = list.toArray(new String[1]);
            }
        }

        if (splited.length == 3 && !splited[0].equals(Num_Seven) && !stFlag ) {
            str = splited[0] + "!" + splited[1] + "!" + splited[2];
        } else if (splited.length == 4 && !splited[0].equals(Num_Seven) && !stFlag ) {
            str = splited[0] + "!" + splited[1] + "!" + splited[2] + "!" + splited[3];
        } else if (splited[0].equals(Num_Seven) && splited.length == 6 && !stFlag ) {
            str = splited[0] + "!" + splited[1]  + "!" + splited[3] + "!" + splited[4] + "!" + splited[5];
        }
        return str.trim();
    }


    /**
     * @param lineChar 行数
     * @return 符合规范的字符
     */
    private String checkSqlTabName(String lineChar, List<String> keys, int lineInt) {
        String str = "";
        StringBuilder builder = new StringBuilder();

        str = lineChar.replaceFirst("R:", "T:").trim();
        str = str.replace(":", "").trim();
        String[] splited = str.split("\\s+");
        str = splited[0] + "!" + splited[1];
        if (keys.isEmpty() && lineInt > 1) {
            builder.append("06!KEY \n \n");
        } else if (!keys.isEmpty() && lineInt > 1) {
        	//倒序
        	//Collections.reverse(keys);
            String keyStr = keys.toString();
            keyStr = keyStr.replaceFirst("\\[", "").trim();
            keyStr = keyStr.replaceFirst("\\]", "").trim();
            builder.append("06!PRIMARY KEY(" + keyStr + ") \n \n");
            keys.clear();
        }
        builder.append(str);
        return builder.toString();
    }

    private List<String> getKeys(String txtStr, ArrayList<String> list,boolean startFlag,boolean endFlag) {
        String str[] = txtStr.split("!");
        if (Num_Five.equals(str[0]) && startFlag && !endFlag) {
            list.add(str[1]);
            list = new ArrayList(new LinkedHashSet(list));
        }
        return list;
    }
    
    private boolean checkTabKeyStart(String txtStr,boolean flag){
    	txtStr = getFirstTwoChar(txtStr);
    	String str[] = txtStr.split("!");
    	if (Num_Three.equals(str[0])  && KEY.equals(str[1]) ) {
    		 flag = true;
		}
    	return flag;
    }
    
    private boolean checkTabKeyEnd(String txtStr,boolean flag){
    	txtStr = getFirstTwoChar(txtStr);
    	String str[] = txtStr.split("!");
    	if (Num_Three.equals(str[0])  && !KEY.equals(str[1])) {
    		flag = true; 
		}
    	return flag;
    }
    
    private String getFirstTwoChar(String lineChar){
    	String[] splited = lineChar.split("\\s+");
    	String str = "";
        if (splited[1].contains(":")) {
            splited[1] = splited[1].replace(":", "").trim();
        }

        //去掉第二个数开头的表名
        if (splited[1].contains("_")) {
            String tabName = splited[1];
            //得到tabName截掉前三位的字符串
            tabName = tabName.split("\\_{1}")[0];
            splited[1] = splited[1].replaceFirst(tabName + "_", "").trim();
        }
        str = splited[0]+"!"+splited[1];  
        return str;
    }
    
    private boolean checkRedefStart(String txtStr,boolean flag){
    	if (txtStr.contains(Redefines) && getFirstTwoChar(txtStr).startsWith(Num_Three)) {
			flag = true;
		}
    	return flag;
    }
    
    private boolean checkRedefEnd(String txtStr,boolean flag){
    	if (!txtStr.contains(Redefines) && getFirstTwoChar(txtStr).startsWith(Num_Three)) {
			 flag = false;
		}
    	return flag;
    } 

}
