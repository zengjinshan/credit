package com.tansun.di.crawler.table.handle.people;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import com.tansun.easycare.framework.util.BeanUtil;
import com.tansun.easycare.modules.credit.entity.people.RNRMessageHeader;

/**
 * 处理第一、二两行是表头的格式
 * 
 * @author georgeKim
 *
 */
public class TypeBHandle extends TableHandle {

	@Override
	public String getHeadFormated(Element table) {
		String strFormat = "";
		for (String field : parserHead(table, 1)) {
			strFormat += field + headDelimiter;
		}
		strFormat += "\n";
		for (String field : parserHead(table, 2)) {
			strFormat += field + headDelimiter;
		}
		return strFormat;
	}

	@Override
	public String process(Element element) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 从第三行开始处理获取数据
	 */
	public List<String[]> getValueList(Element tableElement) {
		List<String[]> valueList = new ArrayList<String[]>();
		Elements trs = tableElement.children().select("tr");
		for (int i = 2; i < trs.size(); i++) {
			Element tr = trs.get(i);
			String[] line = getValue(tr);
			valueList.add(line);
		}
		return valueList;
	}

	@Override
	public List<Object> getBeanList(Element tableElement) {
		List<Object> valueList = new ArrayList<Object>();
		Elements trs = tableElement.children().select("tr");
		for (int i = 2; i < trs.size(); i++) {
			Element tr = trs.get(i);
			Object obj = getBean(tr, true, null);
			if (model.indexOf("RNRFellbackSum") > -1 || model.indexOf("RNRRecordSummary") > -1||model.indexOf("RNrOverduesum") > -1) {
				valueList.addAll((List<Object>) obj);
			} else {
				valueList.add(obj);
			}
		}
		return valueList;
	}

	/**
	 * 进行两次匹配
	 */
	public boolean match(Element element) {
		boolean match = true;
		// 第一行匹配
		String[] actrualHead = parserHead(element, 1);
		if (actrualHead != null && actrualHead.length == getHead().length) {
			for (int i = 0; i < actrualHead.length; i++) {
				if (!getHead()[i].equals(actrualHead[i])) {
					match = false;
					return match;
				}
			}
		} else {
			match = false;
			return match;
		}
		// 第二行匹配
		String[] subHead = parserHead(element, 2);
		if (subHead != null && subHead.length == getSubHead().length) {
			for (int i = 0; i < actrualHead.length; i++) {
				if (!getHead()[i].equals(actrualHead[i])) {
					match = false;
					return match;
				}
			}
		} else {
			match = false;
			return match;
		}
		return match;
	}

	@Override
	int getTableType() {
		return 2;
	}

	@Autowired
	public void setSubHead(String subHead) {
		this.subHead = subHead;
	}

	@Autowired(required = false)
	public void setHeadMapping(String headMapping) {
		this.headMapping = headMapping;
	}

	/**
	 * @param subHeadMapping
	 *            the subHeadMapping to set
	 */
	@Autowired
	public void setSubHeadMapping(String subHeadMapping) {
		this.subHeadMapping = subHeadMapping;
	}

	/**
	 * 处理特殊的表,窄表
	 */
	protected Object getBean(Element tr, boolean isSub, Object obj) {
		Elements tds = tr.select("td");
		if (null == obj) {
			obj = BeanUtil.getInstance(model);
			if (null != fixKeyValue) {
				if(!fixKeyValue.equals(""))
					BeanUtil.set(obj, fixKeyValue.split("=")[0], fixKeyValue.split("=")[1]);
			}
		}
		List<Object> sumList = null;
		if (model.indexOf("RNRFellbackSum") > -1 || model.indexOf("RNRRecordSummary") > -1 ||model.indexOf("RNrOverduesum") > -1) {
			sumList = new ArrayList<Object>();
		}

		Iterator<Element> itd = tds.iterator();
		int index = 0;
		String[] mapping = this.getHeadMapping();
		if (isSub) {
			mapping = this.getSubHeadMapping();
		}
		while (itd.hasNext()) {
			Element td = itd.next();
			if (model.indexOf("RNRFellbackSum") > -1) {
				BeanUtil.set(obj, mapping[index % 2], td.text());
				if (index % 2 == 1) {
					BeanUtil.set(obj, mapping[2], "000" + index / 2);
					fillCommonField(obj,99,null);
					sumList.add(obj);
					obj = BeanUtil.getInstance(model);
				}
			} 
			else if (model.indexOf("RNrOverduesum") > -1) {
				BeanUtil.set(obj, mapping[index % 4], td.text());
				if (index % 4 == 3) {
					BeanUtil.set(obj, mapping[4], "000" + index / 3);
					fillCommonField(obj,99,null);
					sumList.add(obj);
					obj = BeanUtil.getInstance(model);
				}
			}
			else if (model.indexOf("RNRRecordSummary") > -1) {
				obj = genereRecordSummaryBean(index, td);
				sumList.add(obj);
			} else {
				if (!"".equals(mapping[index])) {
					String value = td.text().trim();
					if (obj instanceof RNRMessageHeader) {
						value = value.substring(value.indexOf(":")+1, value.length());
					}
					BeanUtil.set(obj, mapping[index],value);
					fillCommonField(obj,99,null);
				}
			}
			index++;
		}
		if (model.indexOf("RNRFellbackSum") > -1 || model.indexOf("RNRRecordSummary") > -1 ||model.indexOf("RNrOverduesum") > -1) {
			return sumList;
		} else {
			return obj;
		}
	}

	private Object genereRecordSummaryBean(int index, Element td) {
		Object obj;
		obj = BeanUtil.getInstance(model);
		fillCommonField(obj,99,null);
		BeanUtil.set(obj, this.getSubHeadMapping()[0], this.getSubHead()[index].trim());
		BeanUtil.set(obj, this.getSubHeadMapping()[1], td.text().trim());
		if (index < 2) {
			BeanUtil.set(obj, "type", "0001");
		} else if (index >= 2 && index < 5) {
			BeanUtil.set(obj, "type", "0002");
		} else if (index >= 5 && index < 9) {
			BeanUtil.set(obj, "type", "0003");
		}
		return obj;
	}
}
