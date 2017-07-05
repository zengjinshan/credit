package com.tansun.easycare.framework.util;

import java.util.Random;

/**
 * Created by rdpc2419 on 2017/5/19.
 */
public class MsgIdUtil {
    static String[] str={"0","1","2","3","4","5","6","7","8","9"};

    public static void main(String[] args){
        System.out.print((System.currentTimeMillis()+randomForNum(7)).length());
    }

    public static String randomForNum(int num){
        String proStr="";
        Random r=new Random();
        for(int i=0;i<num;i++){
            proStr+=str[r.nextInt(str.length)];
        }
        return System.currentTimeMillis()+proStr;
    }
}
