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
            throw  new FileNotFoundException("文件不存在");
        }else if(!file.isFile() && (!file.getName().endsWith(EXCEL_XLS) || !file.getName().endsWith(EXCEL_XLSX))){
            throw  new FileNotFoundException("文件不是Excel");
        }
        return  file;
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
            for (Row row : sheet) {
                int coloumNum=row.getPhysicalNumberOfCells();
                if (coloumNum == 5 || coloumNum == 11 || coloumNum == 12){
                    Cell cell = row.getCell(coloumNum-1);
                    System.out.print("cell value:"+cell.getStringCellValue());
                }
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
