package com.tansun.easycare.framework.util;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by admin on 2017/7/5.
 */
public class DownFile {

    /**
     * 根据地址获得数据的字节流
     * @param strUrl 网络连接地址
     * @return
     */
    public static byte[] getFileFromNetByUrl(String strUrl){
        try {
            URL url = new URL(strUrl);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
            InputStream inStream = conn.getInputStream();
            byte[] btImg = readInputStream(inStream);
            return btImg;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 从输入流中获取数据
     * @param inStream 输入流
     * @return
     * @throws Exception
     */
    public static byte[] readInputStream(InputStream inStream) throws Exception{

        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        while( (len=inStream.read(buffer)) != -1 ){
            outStream.write(buffer, 0, len);
        }
        inStream.close();
        return outStream.toByteArray();
    }


    /**
     *
     * @param fileBytes
     * @param filePath
     */
    public static void writeImageToDisk(byte[] fileBytes, String filePath,String fileName){
        try {
            File file = new File(filePath);
            if(!file.exists()&&!file.isDirectory()){
                file.mkdirs();
            }
            File file2=new File(filePath,fileName);
            if(!file2.exists()){
                file2.createNewFile();
            }else {
                file2.delete();
                file2.createNewFile();
            }
            FileOutputStream fops = new FileOutputStream(file2);
            OutputStreamWriter outputStreamWriter=new OutputStreamWriter(fops,"GBK");
            BufferedWriter writer=new BufferedWriter(outputStreamWriter);
            writer.write(new String(fileBytes));
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
