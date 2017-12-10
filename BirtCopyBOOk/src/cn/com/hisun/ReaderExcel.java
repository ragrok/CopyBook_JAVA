package cn.com.hisun;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ReaderExcel {

    private  static  final String EXCEL_XLS = "xls";
    private  static  final String EXCEL_XLSX = "xlsx";

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

    public void readerExcel(File file){

    }
}
