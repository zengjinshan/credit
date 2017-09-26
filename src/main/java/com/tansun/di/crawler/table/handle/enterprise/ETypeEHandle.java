package com.tansun.di.crawler.table.handle.enterprise;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import com.tansun.easycare.framework.util.BeanUtil;
import com.tansun.easycare.modules.credit.entity.people.RNRMessageHeader;

/**
 * 处理标题和数据相连的格式
 * 
 * @author zhouxusheng
 *
 */
public class ETypeEHandle extends ETableHandle {

	@Override
	public String getHeadFormated(Element table) {
		return "";
	}

	@Override
	public String process(Element element) {
		return null;
	}

	@Override
	public List<Object> getBeanList(Element tableElement) {
		List<Object> valueList = new ArrayList<Object>();
		Object obj = getBean(tableElement,null);
		valueList.add(obj);
		return valueList;
	}

	/**
	 * 进行查询匹配
	 */
	public boolean match(Element element) {
		boolean match = true;
		// 查询匹配
		String actrualHead=element.text();
		for (int i = 0; i < getHead().length; i++) {
			if (actrualHead.indexOf(getHead()[i])==-1) {
				match = false;
				return match;
			}
		}
		return match;
	}

	@Override
	int getTableType() {
		return 4;
	}


	/**
	 * 处理特殊的表,窄表
	 */
	protected Object getBean(Element tr,Object obj) {
		if (null == obj) {
			obj = BeanUtil.getInstance(model);
			if (null != fixKeyValue) {
				if(!fixKeyValue.equals(""))
					BeanUtil.set(obj, fixKeyValue.split("=")[0], fixKeyValue.split("=")[1]);
			}
		}
		String[] mapping = this.getHeadMapping();
		for(int i=0;i<getHead().length;i++)
		{
			if(!mapping[i].equals(""))
			{
				String value = getFormValueByLabel(tr, getHead()[i]);
				BeanUtil.set(obj, mapping[i],value);
			}
			
		}
		fillCommonField(obj,99,null);
		return obj;
	}
	
	
	/**
	 * 根据标签信息项 获取 实际表单的值 如 根据姓名 获取 张三 这个值。
	 * 
	 * @param form
	 * @param label
	 * @return
	 */
	private String getFormValueByLabel(Element form, String label) {
		Elements fonts = form.select("tbody").first().select("td")
				.select("font");
		if (fonts == null || fonts.isEmpty())
			fonts = form.select("tbody").first().select("td");
		ListIterator<Element> listIterator = fonts.listIterator();

		boolean find = false;
		while (listIterator.hasNext()) {
			Element element = listIterator.next();
			String html = element.html();

			String text = element.text();
			if (text == null)
				text = "";

			text = text.trim().replace(" ", "").replace("：", "");

			if (find) {
				return text;
			}

			if (text == null)
				text = "";

			// 去除网页的空格
			if (text.endsWith(label)) {
				find = true;
			}
		}
		return null;
	}
	
}
