package com.tansun.di.crawler.table.handle.people;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class TypeCHandle extends TableHandle {

	@Override
	int getTableType() {
		return 3;
	}

	@Override
	public String process(Element element) {
		return null;
	}

	/**
	 * 获取值，将两行合并成一行
	 * 
	 * @param element
	 * @return
	 */
	public List<String[]> getValueList(Element element) {
		Map<String, String[]> valueMap = new HashMap<String, String[]>();
		Elements trs = element.children().select("tr").first().siblingElements();
		Iterator<Element> itr = trs.iterator();
		boolean extendFields = false;
		boolean isbh=isBhHead();
		while (itr.hasNext()) {
			Element tr = itr.next();
			String[] line = getValue(tr);
			if (!extendFields && isHead(line)) {
				extendFields = true;
				continue;
			}
			if(isbh)
			{
				if (extendFields) {
					String[] valueLen = valueMap.get(line[0]);
					System.arraycopy(line, 1, valueLen, getHead().length, line.length - 1);
					valueMap.put(line[0], valueLen);
				} else {
					String[] valueLen = new String[getHead().length + getSubHead().length - 1];
					System.arraycopy(line, 0, valueLen, 0, line.length);
					valueMap.put(line[0], valueLen);
				}
			}
			else
			{
				if (extendFields) {
					String[] valueLen = valueMap.get("0");//没有编号，唯一记录
					System.arraycopy(line, 0, valueLen, getHead().length, line.length);
					valueMap.put("0", valueLen);
				} else {
					String[] valueLen = new String[getHead().length + getSubHead().length];
					System.arraycopy(line, 0, valueLen, 0, line.length);
					valueMap.put("0", valueLen);
				}
			}
		}
		return new ArrayList<String[]>(valueMap.values());
	}
	

	@Override
	public List<Object> getBeanList(Element tableElement) {
		Map<String, Object> valueMap = new HashMap<String, Object>();
		Elements trs = tableElement.children().select("tr").first().siblingElements();
		Iterator<Element> itr = trs.iterator();
		boolean extendFields = false;
		boolean isbh=isBhHead();
		while (itr.hasNext()) {
			Object obj = null;
			Element tr = itr.next();
			String[] line = getValue(tr);
			if (!extendFields && isHead(line)) {
				extendFields = true;
				continue;
			}
			if(isbh)
			{
				if (extendFields) {
					obj = valueMap.get(line[0]);
					obj = this.getBean(tr, true, obj);
				} else {
					obj = getBean(tr, false, null);
				}
				valueMap.put(line[0], obj);
			}
			else
			{
				if (extendFields) {
					obj = valueMap.get("0");
					obj = this.getBean(tr, true, obj);
				} else {
					obj = getBean(tr, false, null);
				}
				valueMap.put("0", obj);
			}
			
		}
		return new ArrayList<Object>(valueMap.values());
	}

	/**
	 * 判断是否遇到第二个表头
	 * 
	 * @param strColumns
	 * @return
	 */
	private boolean isHead(String[] strColumns) {
		boolean match = true;
		if (strColumns != null && strColumns.length == getSubHead().length) {
			for (int i = 0; i < strColumns.length; i++) {
				if (!getSubHead()[i].equals(strColumns[i])) {
					match = false;
					break;
				}
			}
		} else {
			match = false;
		}

		return match;
	}
	
	/**
	 * 判断是否是编号记录
	 * 
	 * @param strColumns
	 * @return
	 */
	private boolean isBhHead() {
		boolean match = false;
		if (getHead().length>0) {
			if(getHead()[0].equals("编号"))
			{
					match = true;
			}
		}
		return match;
	}

	@Override
	public String getHeadFormated(Element table) {
		String strFormat = "";
		for (String field : parserHead(table, 1)) {
			strFormat += field + headDelimiter;
		}
		return strFormat;
	}
}
