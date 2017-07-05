package com.tansun.easycare.framework.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by admin on 2017/6/8.
 */
public class CreditPropertyUtil {

    private final static String creditPro="credit.properties";

    private Properties properties = null;

    public static CreditPropertyUtil instance = new CreditPropertyUtil();

    private static final Log logger = LogFactory.getLog(CreditPropertyUtil.class);


    private CreditPropertyUtil() {
        if (properties == null) {
            properties = new Properties();
            init();
        }

    }

    private void init() {
        InputStream io = null;
        try {
            io = CreditPropertyUtil.class.getClassLoader().getResourceAsStream("config"+ File.separator+creditPro);
            properties.load(io);
        } catch (Exception e) {
            logger.warn(e.getMessage(), e);
        } finally {
            if (io != null)
                try {
                    io.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
        }
    }

    public String getPropertyValue(String key) {
        if (properties != null) {
            return properties.getProperty(key);
        }
        return null;
    }
}
