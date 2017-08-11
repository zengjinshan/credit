package com.tansun.easycare.framework.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by zjs on 2017/7/3.
 */
public class HtmlRegxUtil {

    /**
     * 获取指定HTML标签的指定属性的值
     * @param source 要匹配的源文本
     * @param element 标签名称
     * @param attr 标签的属性名称
     * @return 属性值列表
     */
    public static List<String> match(String source, String element, String attr) {
        List<String> result = new ArrayList<String>();
        //String reg = "<" + element + "[^<>]*?\\s" + attr + "=['\"]?(.*?)['\"]?(\\s.*?)?>";
        String reg = "<" + element + "[^<>]*?\\s" + attr + "=['\"]{1}(.*?)['\"]{1}.*>";
        Matcher m = Pattern.compile(reg).matcher(source);
        while (m.find()) {
            String r = m.group(1);
            result.add(r);
        }
        return result;
    }

    /**
     * 获取指定HTML页面源css/js/gif后缀的链接地址
     * @param source 要匹配的源文本
     * @param suffix 后缀名称
     * @return 属性值列表
     */
    public static List<String> matchSuffix(String source, String suffix) {
        List<String> result = new ArrayList<String>();
        String reg = "(?:src=|url\\(|href=)['\"]{1}(?:/"+CreditPropertyUtil.instance.getPropertyValue("credit.rh.project.name")+"/|\\.\\./)?(.+?\\." + suffix + ")['\"]{1}";
        Matcher m = Pattern.compile(reg).matcher(source);
        while (m.find()) {
            String r = m.group(1);
            result.add(r);
        }
        return result;
    }


}
