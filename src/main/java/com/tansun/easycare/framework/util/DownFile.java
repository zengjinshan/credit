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
    public static String getFileFromNetByUrl(String strUrl){
        try {
            URL url = new URL(strUrl);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
            InputStream inStream = conn.getInputStream();
            String content = readInputStream(inStream);
            return content;
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
    public static String readInputStream(InputStream inStream) throws Exception{

        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        while( (len=inStream.read(buffer)) != -1 ){
            outStream.write(buffer, 0, len);
        }
        inStream.close();
        return new String(outStream.toByteArray(),"GBK");
    }


    /**
     *
     * @param content
     * @param filePath
     */
    public static void writeFileToDisk(String content, String filePath,String fileName){
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
            writer.write(content);
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 根据地址获得数据的字节流
     * @param strUrl 网络连接地址
     * @return
     */
    public static void getImgFileFromNetByUrl(String strUrl, String filePath,String fileName){
        try {
            URL url = new URL(strUrl);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
            InputStream inStream = conn.getInputStream();
            BufferedInputStream in = new BufferedInputStream(inStream);
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
                int i;
                while((i=in.read())!=-1){
                    fops.write(i);
                }
                fops.flush();
                fops.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 从输入流中获取数据
     * @param inStream 输入流
     * @return
     * @throws Exception
     */
    public static byte[] readImgByInputStream(InputStream inStream) throws Exception{

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
     * @param content
     * @param filePath
     */
    public static void writeImageToDisk(byte[] content, String filePath,String fileName){
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
            fops.write(content);
            fops.flush();
            fops.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
