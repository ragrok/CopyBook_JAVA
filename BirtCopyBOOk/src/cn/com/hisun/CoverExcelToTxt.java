package cn.com.hisun;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;

/**
 * @author lihongjian,20171208
 * @category 处理copyBook数据结构，抽取excel表中的数据字典，放在一个临时txt文件中，等待CopyBookToSql处理
 */

public class CoverExcelToTxt {

    private  static  final String EXCEL_XLS = "xls";
    private  static  final String EXCEL_XLSX = "xlsx";
    private  static  final int pageSheet = 1;
    private  static  final int pageRow1 = 0;
    private  static  final int pageRow2 = 1;
    private  static  final int pageClomn1 = 4;
    private  static  final int pageClomn2 = 10;
    private  static  final int pageClomn3 = 11;
    private  static  final int pageClomn4 = 12;

    public File getFile(String path) {
        File file = new File(path);
        return file;
    }

    public File checkExcelValid(String ExcelPath) throws IOException{
    	File file = new File(ExcelPath);
        if (!file.exists()){
            throw  new FileNotFoundException("不是文件");
        }else if(!file.isFile() && (!file.getName().endsWith(EXCEL_XLS) || !file.getName().endsWith(EXCEL_XLSX))){
            throw  new FileNotFoundException("不是Excel文件");
        }
        return  file;
    }
           //Excel表中的值
    private String PrintCellValue(Cell cell){

           String cellValue = "";
    	   switch (cell.getCellType()) {
			case Cell.CELL_TYPE_NUMERIC:
				cellValue = String.valueOf(cell.getNumericCellValue()).replace(".0","");
				break;
			case Cell.CELL_TYPE_BLANK:
                cellValue = "";
                break;
			case Cell.CELL_TYPE_STRING:
                cellValue = String.valueOf(cell.getStringCellValue());
				break;
			case Cell.CELL_TYPE_FORMULA:
               // cellValue = String.valueOf(cell.getCellFormula());
				break;
			case Cell.CELL_TYPE_BOOLEAN:
                cellValue = String.valueOf(cell.getBooleanCellValue());
				break;
               case Cell.CELL_TYPE_ERROR:
                // System.out.println(cell.getErrorCellValue());
                break;
			}
    	 System.out.println("cellValue:"+cellValue);  
         return cellValue.trim();
    }
    
    /** 将Excel需要的数据放在Excel中 
     * @param excelPath  Excel 路径
     * @param txtPath    txt 路径
     */
    public void readerExcel(String excelPath,String txtPath){
        FileInputStream inputStream = null;
        BufferedWriter writer = null;
        Workbook book = null;

        try {
            inputStream = new FileInputStream(excelPath);
            writer = new BufferedWriter(new FileWriter(txtPath));
            if (excelPath.endsWith(EXCEL_XLS)){
                book = new HSSFWorkbook(inputStream);
            }else if (excelPath.endsWith(EXCEL_XLSX)){
                book = new XSSFWorkbook(inputStream);
            }
            Sheet sheet = book.getSheetAt(pageSheet);
            for (Row row : sheet){
                for (Cell cell : row){
                    if ((cell.getColumnIndex() == pageClomn1 || cell.getColumnIndex() == pageClomn2 || 
                    		cell.getColumnIndex() == pageClomn3 || cell.getColumnIndex() == pageClomn4) && 
                    	cell.getRowIndex() != pageRow1 && cell.getRowIndex() != pageRow2){
                        String cellValue =  PrintCellValue(cell);
                            if (cell.getColumnIndex() == pageClomn4) {
                                writer.write(cellValue);
                                writer.newLine();
                               } else {
                               	if (cellValue.isEmpty()) {
                               		 writer.write(cellValue);
   								}else{
   									writer.write(cellValue+",");
   							}
						}
                    }
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }finally{
        	if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
           }
        	if (writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			  }	
		  }
      }
   }
}
