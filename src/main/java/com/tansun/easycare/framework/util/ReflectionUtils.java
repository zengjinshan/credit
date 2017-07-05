package com.tansun.easycare.framework.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.apache.commons.lang3.StringUtils;

public class ReflectionUtils {
	/**
	 *   
	  * @author 曾金山
	  * @version 创建时间：2015年7月27日  下午5:25:37
	  * @param obj
	  * @param propertyName
	  * @return
	 */
	 public static Object invokeGetterMethod(Object obj, String propertyName)
	  {
	    String getterMethodName = "get" + StringUtils.capitalize(propertyName);
	    return invokeMethod(obj, getterMethodName, new Class[0], new Object[0]);
	  }
	 
	 /**
	  * 
	   * @author 曾金山
	   * @version 创建时间：2015年7月27日  下午5:26:21
	   * @param obj
	   * @param methodName
	   * @param parameterTypes
	   * @param args
	   * @return
	  */
	 public static Object invokeMethod(Object obj, String methodName, Class<?>[] parameterTypes, Object[] args)
	  {
	    Method method = getAccessibleMethod(obj, methodName, parameterTypes);
	    if (method == null) {
	      throw new IllegalArgumentException("Could not find method [" + methodName + 
	        "] on target [" + obj + "]");
	    }
	    try
	    {
	      return method.invoke(obj, args);
	    } catch (Exception e) {
	      throw convertReflectionExceptionToUnchecked(e);
	    }
	  }
	 /**
	  * 
	   * @author 曾金山
	   * @version 创建时间：2015年7月27日  下午5:26:46
	   * @param obj
	   * @param methodName
	   * @param parameterTypes
	   * @return
	  */
	 public static Method getAccessibleMethod(Object obj, String methodName, Class<?>[] parameterTypes)
	  {
	    for (Class superClass = obj.getClass(); superClass != Object.class; ) {
	      try
	      {
	        Method method = superClass.getDeclaredMethod(methodName, parameterTypes);

	        method.setAccessible(true);

	        return method;
	      }
	      catch (NoSuchMethodException localNoSuchMethodException)
	      {
	        superClass = superClass
	          .getSuperclass();
	      }

	    }

	    return null;
	  }
	 /**
	  * 
	   * @author 曾金山
	   * @version 创建时间：2015年7月27日  下午5:28:14
	   * @param e
	   * @return
	  */
	 public static RuntimeException convertReflectionExceptionToUnchecked(Exception e)
	  {
	    if (((e instanceof IllegalAccessException)) || ((e instanceof IllegalArgumentException)) || 
	      ((e instanceof NoSuchMethodException)))
	      return new IllegalArgumentException("Reflection Exception.", e);
	    if ((e instanceof InvocationTargetException))
	      return new RuntimeException("Reflection Exception.", 
	        ((InvocationTargetException)e).getTargetException());
	    if ((e instanceof RuntimeException)) {
	      return (RuntimeException)e;
	    }
	    return new RuntimeException("Unexpected Checked Exception.", e);
	  }
	 /**
	  * 
	   * @author 曾金山
	   * @version 创建时间：2015年7月27日  下午5:29:41
	   * @param obj
	   * @param propertyName
	   * @param value
	   * @param propertyType
	  */
	 public static void invokeSetterMethod(Object obj, String propertyName, Object value, Class<?> propertyType)
	  {
	    Class type = propertyType != null ? propertyType : value.getClass();
	    String setterMethodName = "set" + StringUtils.capitalize(propertyName);
	    invokeMethod(obj, setterMethodName, new Class[] { type }, new Object[] { value });
	  }
}
