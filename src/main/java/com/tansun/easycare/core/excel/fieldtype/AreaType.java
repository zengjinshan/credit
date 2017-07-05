package com.tansun.easycare.core.excel.fieldtype;

import com.tansun.easycare.core.utils.StringUtils;
import com.tansun.easycare.modules.sys.entity.Area;
import com.tansun.easycare.modules.sys.utils.UserUtils;

/**
 * 字段类型转换
 * @author caojianfeng
 */
public class AreaType {

	/**
	 * 获取对象值（导入）
	 */
	public static Object getValue(String val) {
		for (Area e : UserUtils.getAreaList()){
			if (StringUtils.trimToEmpty(val).equals(e.getName())){
				return e;
			}
		}
		return null;
	}

	/**
	 * 获取对象值（导出）
	 */
	public static String setValue(Object val) {
		if (val != null && ((Area)val).getName() != null){
			return ((Area)val).getName();
		}
		return "";
	}
}
