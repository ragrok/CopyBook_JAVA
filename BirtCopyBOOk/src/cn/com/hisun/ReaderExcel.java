package cn.com.hisun;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
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
           //Excel表中的值
    private String PrintCellValue(Cell cell){

           String cellValue = null;
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
         return cellValue.trim();
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
            for (Row row : sheet){
                for (Cell cell : row){
                    if ((cell.getColumnIndex() == 4 || cell.getColumnIndex() == 10 || cell.getColumnIndex() == 11
                            || cell.getColumnIndex() == 12) && cell.getRowIndex() != 1 && cell.getRowIndex() != 0){
                        String cellValue =  PrintCellValue(cell);
                        if (!cellValue.isEmpty() || cellValue != null) {
                            if (cell.getColumnIndex() == 12) {
                                System.out.println(cellValue);
                            } else {
                                System.out.print(cellValue+",");
                            }
                        }
                    }
                }
            }

        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    public void getConsoleFile(String fileName){
        File file = new File(fileName);
        try {
            file.createNewFile();
            FileOutputStream outputStream = new FileOutputStream(file);
            PrintStream stream = new PrintStream(outputStream);
            System.setOut(stream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
