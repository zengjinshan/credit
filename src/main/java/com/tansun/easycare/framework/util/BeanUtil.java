package com.tansun.easycare.framework.util;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class BeanUtil {

	@SuppressWarnings("rawtypes")
	private static Map<String, Class> CLASS_CACHE = new HashMap<String, Class>();

	@SuppressWarnings("rawtypes")
	public static Object getInstance(String className) {
		Object obj = null;
		Class clz = null;
		try {
			clz = CLASS_CACHE.get(className);
			if (null == clz) {
				clz = Class.forName(className);
				CLASS_CACHE.put(className, clz);
			}
			obj = clz.newInstance();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	@SuppressWarnings("rawtypes")
	public static Class getObjectClass(String className) {
		Class clz = null;
		try {
			clz = CLASS_CACHE.get(className);
			if (null == clz) {
				clz = Class.forName(className);
				CLASS_CACHE.put(className, clz);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return clz;
	}
	
	public static Object get(Object obj, String filed) {
		Object result = null;
		try {
			Class clazz = obj.getClass();
			PropertyDescriptor pd = new PropertyDescriptor(filed, clazz);
			Method getMethod = pd.getReadMethod();// 获得get方法
			result = getMethod.invoke(obj);// 执行get方法返回一个Object
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IntrospectionException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void set(Object obj, String field, Object value) {
		// System.out.println(value+"--------["+field+"]");
		try {
			Class clazz = obj.getClass();
			PropertyDescriptor pd = new PropertyDescriptor(field, clazz);
			Class fieldTypeClz = pd.getPropertyType();
			Method setMethod = pd.getWriteMethod();
			if (fieldTypeClz == Long.class) {
				Long lValue = getLongValue(value);
				setMethod.invoke(obj, lValue);
			} else if (fieldTypeClz == BigDecimal.class) {
				BigDecimal lValue = getBigDecimal(value);
				if (null != lValue)
					setMethod.invoke(obj, lValue);
			} else {
				setMethod.invoke(obj, value);
			}
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IntrospectionException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	protected static Long getLongValue(Object value) {
		Long lValue = 0l;
		try {
			lValue = Long.valueOf(((String) value).trim().replace(",", "").replaceAll("--", ""));
		} catch (Exception e) {
			// LogUtil.printStackTrace(logger, LogLevel.ERROR, e);
		}
		return lValue;
	}

	private static BigDecimal getBigDecimal(Object value) {
		BigDecimal lValue = null;
		String strValue = null;
		try {
			strValue = ((String) value).trim().replaceAll(",", "").replaceAll("--", "");
			if (!StringUtils.isBlank(strValue)) {
				lValue = new BigDecimal(strValue);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println((String) strValue);
		}
		return lValue;
	}
}
