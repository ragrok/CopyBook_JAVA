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
    private final String treeNumber = "03";
    private final String fiveNumber = "05";
    private final String sevenNumber = "07";
    private final String fourNumber = "49";
    private final String firstNumber = "01";
    private final String DsbNumber = "DSB001";
    private final String DevNumber = "DEVLYF";
    private final String Comp = "COMP";
    private final String KEY = "KEY";

    //去掉每行的水牌和最后的点
    private String getSplit(String charsString) {
        String lsString = null;
        lsString = charsString.trim().replace(".", "").trim();
        if (lsString.startsWith(DsbNumber)) {
            lsString = lsString.replace(DsbNumber, "").trim();
        } else if (lsString.startsWith(DevNumber)) {
            lsString = lsString.replace(DevNumber, "").trim();
        } else if (lsString.endsWith(Comp)) {
            lsString = lsString.replace(Comp, "").trim();
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
            //最后添加一个数据，防止最后一个key为空
            txtLsit1.add("01 TA:BLE:.");
            
            for(String str  : txtLsit1){
            	//对头部进行处理
                if (str.startsWith(firstNumber) && str.endsWith(".") && !str.contains("*")) {
                    lineInt++;
                    lineStr = getSplit(str);
                    lineStr = checkSqlTabName(lineStr, keyList, lineInt);
                    startFlag = false;
                    endFlag = false;
                    //对字段进行处理
                } else if (str.startsWith(fiveNumber) || str.startsWith(fourNumber) || str.startsWith(treeNumber)
                        && str.endsWith(".") && !str.contains("*") || str.startsWith(sevenNumber)) {
                    lineStr = getSplit(str);
                    startFlag = checkTabKeyStart(lineStr,startFlag);
                    endFlag = checkTabKeyEnd(lineStr,endFlag);
                    lineStr = checkSqlTabFiled(lineStr);
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
    private String checkSqlTabFiled(String lineChar) {
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


        if (splited.length == 3) {
            str = splited[0] + "!" + splited[1] + "!" + splited[2];
        } else if (splited.length == 4) {
            str = splited[0] + "!" + splited[1] + "!" + splited[2] + "!" + splited[3];
        } else if (splited.length == 6 && splited[1].equals(sevenNumber)) {
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
        if (fiveNumber.equals(str[0]) && startFlag && !endFlag) {
            list.add(str[1]);
            list = new ArrayList(new LinkedHashSet(list));
        }
        return list;
    }
    
    private boolean checkTabKeyStart(String txtStr,boolean flag){
    	txtStr = getFirstTwoChar(txtStr);
    	String str[] = txtStr.split("!");
    	if (treeNumber.equals(str[0])  && KEY.equals(str[1]) ) {
    		 flag = true;
		}
    	return flag;
    }
    
    private boolean checkTabKeyEnd(String txtStr,boolean flag){
    	txtStr = getFirstTwoChar(txtStr);
    	String str[] = txtStr.split("!");
    	if (treeNumber.equals(str[0])  && !KEY.equals(str[1])) {
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

}
