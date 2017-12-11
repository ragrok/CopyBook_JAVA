package cn.com.hisun;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

public class MultiOutputStream extends OutputStream{

    OutputStream output1;
    OutputStream output2;

    public MultiOutputStream(OutputStream output1,OutputStream output2){
        this.output1 = output1;
        this.output2 = output2;
    }

    @Override
    public void write(int b) throws IOException {
        output1.write(b);
        output2.write(b);
    }

    public static void main() throws IOException{
        FileOutputStream propFile = null;
        MultiOutputStream multi = null;

        try {
            propFile = new FileOutputStream("src/applicationContext.properties");
            //设置同时输出到控制台和prop文件
            multi = new MultiOutputStream(new PrintStream(propFile),System.out);
            System.setOut(new PrintStream(multi));

            System.out.println("输入任何文字均可~~");
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            multi.close();
            propFile.close();
        }
    }

}
