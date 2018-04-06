package com.sellerNet.backManagement.utils;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import javax.imageio.ImageIO;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class FileUpload {
	
	public void fileUpload(CommonsMultipartFile fileRecord,String pathName) throws IOException {
       //用来检测程序运行时间
        long  startTime=System.currentTimeMillis();
        try {
            //获取输出流
            OutputStream os=new FileOutputStream(pathName);
            //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
            InputStream is=fileRecord.getInputStream();
            int temp = 0;
            //一个一个字节的读取并写入
            while((temp=is.read())!=(-1))
            {
                os.write(temp);
            }
           os.flush();
           os.close();
           is.close();
         
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        long  endTime=System.currentTimeMillis();
        System.out.println("方法一的运行时间：=================="+String.valueOf(endTime-startTime)+"ms");
	}

	
	
	
	
}
