package cn.com.hisun;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.channels.NonWritableChannelException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author lihongjian, 20171208
 * @category 处理copyBook数据结构，处理转化之后的两个txt文件，比对之后，生成标准sql语句
 */

public class CopyBookToSql {

    private final String firstNumber = "01";
    private final String treeNumber = "03";
    private final String fiveNumber = "05";
    private final String sixNumber = "06";
    private final String sevenNumber = "07";
    private final String fourNumber = "49";
    private final String DIC_P = "P";
    private final String DIC_C = "C";
    private final String PIC_X = "X";
    private final String PIC_N = "9";
    private final String PIC_M = "M";
    private final String PIC = "PIC";
    private final String DIC = "DIC";
    private final String KEY = "KEY";
    private final String PIC_S = "S9";
    private final String PIC_SS ="S";
    private final String PIC_V = "V";
    private final String TXT_BIG = "TXT_BIG";

    /**
     * @param txtPath1 第一个txt文件地址
     * @param txtPath2 第二个txt文件地址
     */
    public void copyBookTosql(String txtPath1, String txtPath2, String sqlPath, String scheMa) {

        BufferedReader txtBuff1 = null;
        BufferedReader txtBuff2 = null;
        List<String> txtLsit1 = null;
        List<String> txtLsit2 = null;
        List<String> txtLsit3 = null;
        BufferedWriter writer = null;
        FileReader txtReader1 = null;
        FileReader txtReader2= null;
        FileWriter txtWrite = null;
        try {
            String lineChar = null;
            txtReader1 = new FileReader(txtPath1);
            txtReader2 = new FileReader(txtPath2);
            txtBuff1 = new BufferedReader(txtReader1);
            txtBuff2 = new BufferedReader(txtReader2);
            txtWrite = new FileWriter(sqlPath);
            writer = new BufferedWriter(txtWrite);
            txtLsit1 = new ArrayList<String>();
            txtLsit2 = new ArrayList<String>();
            txtLsit3 = new ArrayList<String>();

            while ((lineChar = txtBuff1.readLine()) != null) {
                if (!lineChar.isEmpty()) {
                    txtLsit1.add(lineChar.trim());
                }
            }

            while ((lineChar = txtBuff2.readLine()) != null) {
                if (!lineChar.isEmpty()) {
                    txtLsit2.add(lineChar.trim());
                }
            }
            //循环CopyBook
            for (String txtStr : txtLsit1) {
                String arry1[] = txtStr.split("!");
                //新建文件，新建输出流，增加建表语句
                if (arry1[0].equals(firstNumber) && !arry1[1].equals("TABLE")) {
                    lineChar = "\n";
                    lineChar += "DROP TABLE " + scheMa + "." + arry1[1] + ";" + " \n \n";
                    lineChar += "CREATE TABLE " + scheMa + "." + arry1[1] + " (";
                }

                //循环数据字典，匹配字段长度，输出建表语句
                for (String txtStr2 : txtLsit2) {
                    String arry2[] = txtStr2.split(",");
                    if (arry1[0].equals(treeNumber) || arry1[0].equals(fiveNumber)
                            || arry1[0].equals(fourNumber) || arry1[0].equals(sevenNumber)) {
                        lineChar = splitSql(arry1, arry2, lineChar);
                    } else if (arry1[0].equals(sixNumber)) {
                        StringBuilder builder = new StringBuilder();
                        if (!KEY.equals(arry1[1])) {
                            builder.append(arry1[1] + "\n");
                        }
                        builder.append(" ) \n");
                        builder.append("IN TBS_REPORT_DATA INDEX IN TBS_REPORT_INDEX COMPRESS YES; \n\n");
                        lineChar = builder.toString();
                    } else {
                       // System.out.println("这些都是不符合建表的情况");
                    }
                }
                System.out.println("内容"+lineChar);
                txtLsit3.add(lineChar);
                lineChar = "";
            }
            System.out.println("我在这里");
            //去掉最后一行的逗号
            for(int i=1; i < txtLsit3.size();i++){
            	if (txtLsit3.get(i).trim().startsWith(")") && txtLsit3.get(i-1).trim().endsWith(",")) {
					String value = (txtLsit3.get(i-1).trim()).replace(","," ");
					txtLsit3.set(i-1, value);
				}
            	System.out.println("内容"+txtLsit3.get(i-1).trim());
            	writer.write(txtLsit3.get(i-1).trim());
            	writer.newLine();
            }
            
        } catch (Exception e) {
            // TODO: handle exception
            // 关闭资源
        } finally {

        	if (txtBuff1 != null) {
                try {
                	txtBuff1.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }

            if (txtBuff2 != null) {
                try {
                	txtBuff2.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }

            if (writer != null) {
                try {
                	writer.close();
                	txtWrite.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
    }

    //

    /**
     * @param arry1
     * @param arry2    存放表中字段的数据，以03和05开头，长度在3和4之间
     * @param lineChar 存放数据字典的对应表类型的数据，DIC需要参考数据字典，PIC不需要参考数据字典，直接拿就行
     * @return
     */
    private String splitSql(String[] arry1, String[] arry2, String lineChar) {

        if (arry1[0].equals(treeNumber) || arry1[0].equals(fourNumber) || arry1[0].equals(fiveNumber)) {
            if (arry1[2].equals(PIC)) {
                // 以X开头的
                if (arry1[3].startsWith(PIC_X)) {
                    String number = getNumbers(arry1[3]);
                    if (Integer.valueOf(number) != 26) {
                    	if (Integer.valueOf(number)>255) {
                    	 lineChar = arry1[1] + "\t" + "VARCHAR(" + number + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
						}else {
						  lineChar = arry1[1] + "\t" + "CHAR(" + number + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
						}
                    } else {
                        lineChar = arry1[1] + "\t" + "TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,";
                    }
                } else if (arry1[3].startsWith(PIC_S)) {
                    String number = getSNine(arry1[3]);
                    lineChar = arry1[1] + "\t" + "DECIMAL(" + number + ",0)" + "\t" + "DEFAULT 0 NOT NULL,";
                } else if (arry1[3].startsWith(PIC_N)) {
                    int number = Integer.valueOf(getNumbers(arry1[3]));
                    lineChar = arry1[1] + "\t" + "DECIMAL(" + number + ",0)" + "\t" + "DEFAULT 0 NOT NULL ,";
                } 

            } else if (arry1[2].startsWith(DIC)) {
                // 第三个数中带有逗号,有两种情况，第二个数为P，或者为其他数
                if (arry1[2].contains(",")) { 
                    String str = getTwoBranket(arry1[2])[0];
                    String str2 = getTwoBranket(arry1[2])[1];
                    // 匹配到第一个关键字，并且第二个字母为P
                    if (arry2[0].equals(str) && DIC_P.equals(str2)) {
                        // X类型
                        if (PIC_X.equals(arry2[1])) {
                        	if (Integer.valueOf(arry2[2])>255) {
                           	 lineChar = arry1[1] + "\t" + "VARCHAR(" + arry2[2] + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
       						}else {
       						  lineChar = arry1[1] + "\t" + "CHAR(" + arry2[2] + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
       						}
                        }
                        // N类型
                        if (PIC_N.equals(arry2[1])) {
                            lineChar = arry1[1] + "\t" + "DECIMAL(" + arry2[2] + "," + arry2[3] + ")" + "\t"
                                    + "DEFAULT 0 NOT NULL,";
                        }
                        // M类型
                        if (PIC_M.equals(arry2[1])) {
                            int num = Integer.valueOf(arry2[2]) * 3;
                            if (num >= 255) {
                                lineChar = arry1[1] + "\t" + "VARCHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            } else {
                                lineChar = arry1[1] + "\t" + "CHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            }
                        }
                        // V类型
                        if (PIC_V.equals(arry2[1])) {
                            int num = Integer.valueOf(arry2[2]);
                            if (num >= 255) {
                                lineChar = arry1[1] + "\t" + "VARCHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            } else {
                                lineChar = arry1[1] + "\t" + "CHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            }
                        }
                        // S类型
                        if (PIC_SS.equals(arry2[1])) {
                                lineChar = arry1[1] + "\t" + "DECIMAL(" + arry2[2] + "," + arry2[3] + ")" + "\t" + "DEFAULT 0 NOT NULL,";
                            
                        }
                     //处理第二个数不为P的 ,这是特殊类型  
                    }else if (arry2[0].equals(str) && !DIC_P.equals(str2)) {
                    	if (TXT_BIG.equals(arry2[0])) {
                    		int number = (int) (Integer.valueOf(getNumbers(str2))*1.5);
                        	if (number >= 255) {
                                lineChar = arry1[1] + "\t" + "VARCHAR(" + number + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            } else {
                                lineChar = arry1[1] + "\t" + "CHAR(" + number + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            }
						}
                    	
					}
                    // 第三个数不带有逗号
                } else if (!arry1[2].contains(",")) {
                    String str = getOneBranket(arry1[2]);
                    // 匹配到某个关键字
                    if (arry2[0].equals(str)) {
                        // X类型
                        if (PIC_X.equals(arry2[1])) {
                        	if (Integer.valueOf(arry2[2])>255) {
                              	  lineChar = arry1[1] + "\t" + "VARCHAR(" + arry2[2] + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
          					 }else {
          						  lineChar = arry1[1] + "\t" + "CHAR(" + arry2[2] + ")" + "\t" + "DEFAULT ' ' NOT NULL ,";
          				   }
                        }
                        // N类型
                        if (PIC_N.equals(arry2[1])) {
                            lineChar = arry1[1] + "\t" + "DECIMAL(" + arry2[2] + "," + arry2[3] + ")" + "\t" + "DEFAULT 0 NOT NULL,";
                        }
                        // M类型 
                        if (PIC_M.equals(arry2[1])) {
                            int num = Integer.valueOf(arry2[2]) * 3;
                            if (num >= 255) {
                                lineChar = arry1[1] + "\t" + "VARCHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            } else {
                                lineChar = arry1[1] + "\t" + "CHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            }
                        }
                        // V类型
                        if (PIC_V.equals(arry2[1])) {
                            int num = Integer.valueOf(arry2[2]);
                            System.out.println("我是V类型");
                            if (num >= 255) {
                                lineChar = arry1[1] + "\t" + "VARCHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            } else {
                                lineChar = arry1[1] + "\t" + "CHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                            }
                        }
                     // S类型
                        if (PIC_SS.equals(arry2[1])) {
                        	   System.out.println("我是s类型");
                                lineChar = arry1[1] + "\t" + "DECIMAL(" + arry2[2] + "," + arry2[3] + ")" + "\t" + "DEFAULT 0 NOT NULL,";
                            
                        }
                        // C类型
                        if (DIC_C.equals(arry2[1])) {
                        	   System.out.println("我是c类型");
                        	   int num = Integer.valueOf(arry2[2]);
                               if (num >= 255) {
                                   lineChar = arry1[1] + "\t" + "VARCHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                               } else {
                                   lineChar = arry1[1] + "\t" + "CHAR(" + num + ")" + "\t" + "DEFAULT ' ' NOT NULL,";
                               }
                        }  
                    }
                }

            }
        } else if (arry1[0].equals(sevenNumber)) {
            String filedName = arry1[1];
            int fileNumber = Integer.valueOf(arry1[2]);
            StringBuilder builder = new StringBuilder();
             
            if ((arry1[3]).startsWith(PIC)) {
                String str = getNine(arry1[4]);
                lineChar = "DECIMAL(" + str + ",0)" + "\t" + "DEFAULT 0 NOT NULL,";
            }

            for (int i = 1; i < fileNumber; i++) {
                builder.append(filedName + i + "\t \t" + lineChar + "\n");
            }
            lineChar = builder.toString();

        } else {
           // System.out.println("这些都是异常情况");
        }
        return lineChar;
    }

    private String getNumbers(String content) {
        Pattern pattern = Pattern.compile("\\d+");
        Matcher matcher = pattern.matcher(content);
        while (matcher.find()) {
            content = matcher.group(0);
        }
        if (content.startsWith("0")) {
            content = content.replaceFirst("0", "");
        }
        return content.trim();
    }

    private String getOneBranket(String oneChar) {
        oneChar = oneChar.replace("DIC(", "").trim();
        oneChar = oneChar.replace(")", "").trim();
        return oneChar;
    }


    private String[] getTwoBranket(String twoChar) {
        String[] split = new String[2];
        twoChar = twoChar.replace("DIC(", "").trim();
        twoChar = twoChar.replace(")", "").trim();
        split = twoChar.split(",");
        return split;
    }

    private String getSNine(String content) {
        String str = "";
        str = content.replace("S9(", "");
        str = str.replace(")", "");
        return str.trim();
    }

    private String getNine(String content) {
        String str = "";
        str = content.replace("9(", "").trim();
        str = str.replace(")", "");
        if (str.startsWith("0")) {
            str = str.replaceFirst("0", "");
        }
        return str.trim();
    }
}
