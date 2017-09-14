package com.tansun.di.crawler.table.handle.people;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.tansun.easycare.framework.util.BeanUtil;
import com.tansun.easycare.framework.util.DateUtil;

public class TypeMHandle extends TableHandle {

	@Override
	int getTableType() {
		return 8;
	}

	@Override
	public String process(Element element) {
		
		return null;
	}

	@Override
	public String getHeadFormated(Element element) {
		return null;
	}
	
	/**
	 * @method 解析准贷记卡
	 */
	@Override
	public List<Object> getBeanList(Element tableElement) {
		//创建一个map集合用来存储对象
		Map<String, Object> valueMap = new HashMap<String, Object>();
		
		//取出table下个元素tbody在选择里面的tr,得到的tr,在获取tr的下个兄弟元素
		Elements trs = tableElement.children().select("tr").first().siblingElements();
		
		//获取迭代器
		Iterator<Element> itr = trs.iterator();
		Map<String, Object> objectMap = getHandleMap();
		int position=0;
		boolean stateStart=false;
		boolean isNotEnd=true;
		String onlycode=getOnlyId();
		while (itr.hasNext()) {
			Object obj = null;
			Element tr = itr.next();
			String[] line = getValue(tr);
			if (isSubHead(line)) {
				position=1;
				stateStart=true;
				obj = getSplitBean(tr, true, null,position,onlycode);
				valueMap.put("state", obj);
				continue;
			}		
			if(!stateStart)
			{
				if(objectMap!=null) {
					Map<String, Object> map = getBeanWithObject(tr,false,position,objectMap);
					map = getBeanWithObject(tr, true,2,map);
					valueMap.putAll(map);
				}
			}
			else
			{
				if(isNotEnd)
				{
					obj= valueMap.get("state");
					obj = getSplitBean(tr, false, obj,position,onlycode);
					valueMap.put("state", obj);
					Map<String, Object> mapSo = getBeanState(tr, obj,onlycode);
					valueMap.putAll(mapSo);
					isNotEnd=false;
				}
			}		
		}
		return new ArrayList<Object>(valueMap.values());
	}
	
	/**
	 * @method 解析html对应xml中的第一个头和第四头封装成对象
	 * @param tr
	 * @param isfour
	 * @param position
	 * @param lastMap
	 * @return
	 */
	protected Map<String, Object> getBeanWithObject(Element tr,boolean isfour,int position,Map<String, Object> lastMap) {
		Elements tds = tr.select("td");
		Object obj=null;
		String modelName=null;
		if (null == obj) {
			String[] modelTpye=null;
			if(model.indexOf(",")!=-1)
			{
				modelTpye=model.split(",");
				if(modelTpye.length>position)
				{
					obj = lastMap.get(modelTpye[position]);
					modelName=modelTpye[position];
				}
			}
		}
		Iterator<Element> itd = tds.iterator();
		
		String[] mapping = this.getHeadMapping();
		if (isfour) {
			mapping = this.getFourHeadMapping();
		}
		if(obj!=null){
			int index = 0;
			while (itd.hasNext()) {
				Element td = itd.next();
				if(index<mapping.length)
				{
					if (!"".equals(mapping[index])) {
						BeanUtil.set(obj, mapping[index], td.text());
					}
				}
				else
				{
					break;
				}
				index++;
			}
//			fillCommonField(obj);
			lastMap.put(modelName, obj);
		}
		return lastMap;
	}
	
	
	/**
	 * @method 处理html所对应xml中的第二表头
	 * @param tr
	 * @param isSplit
	 * @param obj
	 * @param position
	 * @param keyId
	 * @return
	 */
	protected Object getSplitBean(Element tr, boolean isSplit, Object obj,int position,String keyId) {
		String astr=tr.text();
		if (null == obj) {
			String[] modelTpye=null;
			if(model.indexOf(",")!=-1)
			{
				modelTpye=model.split(",");
				if(modelTpye.length>position)
				{
					obj = BeanUtil.getInstance(modelTpye[position]);
				}
				else
				{
					obj=null;
				}
			}
			else
			{
				obj = BeanUtil.getInstance(model);
			}
		}

		String[] head = this.getSubHead();
		String[] mapping=this.getSubHeadMapping();		
		if(isSplit)
		{
			for(int index=0;index<head.length;index++)
			{
				if(head[index].indexOf("next")!=-1)
				{
					continue;
				}
				if(astr.indexOf(head[index])==-1)
				{
					break;
				}
				String value=astr.substring(0,astr.indexOf(head[index]));
				if(!mapping[index].trim().equals(""))
				{
					if(value.indexOf("年")!=-1&&value.indexOf("月")!=-1)
					{
						value=DateUtil.stringDateFormat(value,"ym");
					}
					BeanUtil.set(obj, mapping[index], value);
				}
				astr=astr.substring(astr.indexOf(head[index])+head[index].length());
				BeanUtil.set(obj, mapping[mapping.length-1], keyId);
				fillCommonField(obj,position,null);
			}
		}
		else
		{
			for(int index=0;index<head.length;index++)
			{
				if(head[index].indexOf("next")!=-1)
				{
					BeanUtil.set(obj, mapping[index], astr);
				}
				if(astr.indexOf(head[index])==-1)
				{
					continue;
				}
			}
		}
		return obj;
	}
	
	/**
	 * 判断是否遇到第二个表头
	 * 
	 * @param strColumns
	 * @return
	 */
	private boolean isSubHead(String[] strColumns) {
		
		boolean match = true;
		if(getSubHead()==null)
		{
			match = false;
			return match;
		}
		if (strColumns != null) {
			for (int i = 0; i < getSubHead().length; i++) {
				if(getSubHead()[i].equals("next"))
				{
					continue;
				}
				if (strColumns[0].indexOf(getSubHead()[i])==-1) {
					match = false;
					break;
				}
			}
		} else {
			match = false;
		}

		return match;
	}
	
	

}
