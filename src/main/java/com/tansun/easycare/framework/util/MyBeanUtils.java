package com.tansun.easycare.framework.util;

import java.lang.reflect.Field;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;

public class MyBeanUtils {
	/** 
	 * 
	  * @author 曾金山
	  * @version 创建时间：2015年7月27日  下午5:34:17
	  * @param dest
	  * @param src
	 */
	 public static void propertyUtils(Object dest, Object src)
	  {
	    Field[] fields = src.getClass().getDeclaredFields();
	    for (Field field : fields)
	      if (!field.getName().equals("serialVersionUID")) {
	        Object object = ReflectionUtils.invokeGetterMethod(src, field.getName());
	        if ((object != null) || (StringUtils.isNotBlank(ObjectUtils.toString(object))))
	          ReflectionUtils.invokeSetterMethod(dest, field.getName(), object, 
	            field.getType());
	      }
	  }
}
