package cn.com.hisun;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;

public class ReaderExcel {

    private  static  final String EXCEL_XLS = "xls";
    private  static  final String EXCEL_XLSX = "xlsx";
    private  static  final  int pageSheet = 1;

    public File getFile(String path) {
        File file = new File(path);
        return file;
    }

    public File checkExcelValid(File file) throws IOException{
        if (!file.exists()){
            throw  new FileNotFoundException("不是文件");
        }else if(!file.isFile() && (!file.getName().endsWith(EXCEL_XLS) || !file.getName().endsWith(EXCEL_XLSX))){
            throw  new FileNotFoundException("不是Excel文件");
        }
        return  file;
    }
    
    private void PrintCellValue(Cell cell){
    	   switch (cell.getCellType()) {
			case Cell.CELL_TYPE_NUMERIC:
				System.out.print(cell.getNumericCellValue());
				break;
			case Cell.CELL_TYPE_BLANK:
				System.out.print("");
				break;
			case Cell.CELL_TYPE_STRING:
				System.out.print(cell.getStringCellValue());
				break;
			case Cell.CELL_TYPE_FORMULA:
				System.out.print(cell.getRichStringCellValue());
				break;
			case Cell.CELL_TYPE_BOOLEAN:
				System.out.print(cell.getBooleanCellValue());
				break;
			}
    }

    public void readerExcel(File file,String txtPath){
        FileInputStream inputStream = null;
        FileOutputStream outputStream = null;
        Workbook book = null;

        try {
            checkExcelValid(file);
            inputStream = new FileInputStream(file);
            if (file.getName().endsWith(EXCEL_XLS)){
                 book = new HSSFWorkbook(inputStream);
            }else if (file.getName().endsWith(EXCEL_XLSX)){
                 book = new XSSFWorkbook(inputStream);
            }
            Sheet sheet = book.getSheetAt(pageSheet);
            for (int i = 2; i< sheet.getPhysicalNumberOfRows();i++) {
            	     Row row = sheet.getRow(i);
                for (int j=0; j< row.getPhysicalNumberOfCells(); j++ ){
                	   if (j == 4 || j == 10 || j == 11 || j == 12) {
                		   if (row.getCell(j).toString() != null || row.getCell(j).toString() != "") {
                			   PrintCellValue(row.getCell(j));
						}
					}
                }
               
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
