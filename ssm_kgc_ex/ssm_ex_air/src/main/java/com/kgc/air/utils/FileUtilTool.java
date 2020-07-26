package com.kgc.air.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtilTool
{
    //保存单个文件到指定路径
    public static void saveFile(String fileNamePath, InputStream in){
        
        File newFile = new File(fileNamePath);
        //级联创建父目录
        newFile.getParentFile().mkdirs();
        try
        {
            //创建一个文件输出流
            FileOutputStream out = new FileOutputStream(fileNamePath);
            //创建一个缓冲区
            byte buffer[] = new byte[1024];
            //判断输入流中的数据是否已经读完的标识
           int len = 0;
           //循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
           while((len=in.read(buffer))>0){
               //使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(fileNamePath)当中
               out.write(buffer, 0, len);
           }
            //关闭输入流
            in.close();
            //关闭输出流
            out.close();
        }
        catch (IllegalStateException | IOException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
