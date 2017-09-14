package com.tansun.di.crawler.table.handle.people;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.nodes.Element;
import com.tansun.easycare.framework.util.BeanUtil;
import com.tansun.easycare.framework.util.DateUtil;

public class TypeGHandle extends TableHandle {

	@Override
	int getTableType() {
		return 6;
	}

	@Override
	public String process(Element element) {
		return null;
	}

	
	/**
	 * method:解析文字的部分
	 */
	@Override
	public List<Object> getBeanList(Element trElement) {
		//创建一个map集合,用于存放对象
		Map<String, Object> valueMap = new HashMap<String, Object>();
		
		//定义一个对象
		Object obj = null;

		//把传入过来的trElement改名为tr
		Element tr = trElement;
		
		//得到货款的id
		String onlycode=getOnlyId();
		
		//把第二头相对应的内容存入对象
		obj = getSubBean(tr, null,1,onlycode);
		
		//把对象存入集合中
		valueMap.put("1", obj);	
		
		
		obj = getSplitBean(tr, false, null,0,false,onlycode);
		valueMap.put("2", obj);	
		if(getThrHead()!=null)
		{	
			obj = getDate(tr,2,onlycode);
			valueMap.put("3", obj);
			obj = valueMap.get("1");
			obj = getSplitBean(tr, true, obj,0,true,onlycode);
			valueMap.put("1", obj);		
		}
		return new ArrayList<Object>(valueMap.values());
	}
	
	@Override
	public Map<String, Object> getBeanMap(Element trElement) {
		//创建一个map集合,用于存放对象
		Map<String, Object> valueMap = new HashMap<String, Object>();
		
		//定义一个对象
		Object obj = null;

		//把传入过来的trElement改名为tr
		Element tr = trElement;
		
		//得到货款的id
		String onlycode=getOnlyId();
		
		//把第二头相对应的内容存入对象
		obj = getSubBean(tr, null,1,onlycode);
		
		//把对象存入集合中
		valueMap.put("1", obj);	
		
		
		obj = getSplitBean(tr, false, null,0,false,onlycode);
		valueMap.put("0", obj);	
		if(getThrHead()!=null)
		{	
			obj = getDate(tr,2,onlycode);
			valueMap.put("2", obj);
			
			obj = valueMap.get("1");
			obj = getSplitBean(tr, true, obj,0,true,onlycode);
			valueMap.put("1", obj);		
		}
		Map<String, Object> returnMap = new HashMap<String, Object>();
		String[] modelTpye =model.split(",");
		returnMap.put(modelTpye[0], valueMap.get("0"));
		returnMap.put(modelTpye[1], valueMap.get("1"));
		returnMap.put(modelTpye[2], valueMap.get("2"));
		return returnMap;
	}
	
	/**
	 * @method 解析截止时间
	 * @param tr
	 * @param position
	 * @param keyId
	 * @return
	 */
	private Object getDate(Element tr, int position, String keyId) {
		String astr = tr.text();
		Object obj=null;
		String[] modelTpye =null;
		
		if(model.indexOf(",")!=-1) {
			
			modelTpye = model.split(",");
			
			if(modelTpye.length>position) {
				
				obj = BeanUtil.getInstance(modelTpye[position]);
				
			}
		}
		
		if(obj!=null)
		{
			String[] thrHead = this.getThrHead();
			String[] thrHeadMapping = this.getThrHeadMapping();
			String value = ""; 
			for (int index = 0; index < thrHead.length; index++) {
				
				if(astr.indexOf(thrHead[index])!=-1) {
					value=astr.substring(0,astr.indexOf(thrHead[index]));
				}
				if(index <= 2) {
					if(index == 1) {
						 value = value.replace("年",".");
						 BeanUtil.set(obj, thrHeadMapping[index], value);
						 
						 
						 
					}else if(index ==2){
						value = value.replace("年","." ).replace("月", ".");
						 BeanUtil.set(obj, thrHeadMapping[index], value);
						
					}else {
						astr=astr.substring(astr.indexOf(thrHead[index])+thrHead[index].length());
					}
					
				}
			}
			BeanUtil.set(obj, thrHeadMapping[thrHeadMapping.length-1], keyId);
			fillCommonField(obj,position,null);
		}
		return obj;
	}

	/**
	 * 
	 *保存xml中第二头的对象(cue和货款id)
	 * @param tr
	 * @param obj
	 * @param position:用于xml中第几个对象的判断
	 * @param keyId:货款ID
	 * @return
	 */
	protected Object getSubBean(Element tr, Object obj,int position,String keyId) {
		//如果obj为空
		if (null == obj) {
			//创建存储xml中对象的集合
			String[] modelTpye=null;
			
			//如果xml中有多的对象
			if(model.indexOf(",")!=-1)
			{	
				//用逗号进行切割,变成数组
				modelTpye=model.split(",");
				
				//如果数组的长度大于position
				if(modelTpye.length>position)
				{
					//通过反射创建相应的对应的对象
					obj = BeanUtil.getInstance(modelTpye[position]);
				}
				else
				{
					//如果数组的长度小于position,对象为空
					obj = null;
				}
				
			}
			else
			{
				//xml中对应的只有一个对象
				obj = BeanUtil.getInstance(model);
			}
		}
		
		//得到传过来tr中内容的值
		String value=tr.text();
		
		//得到xml中对应第二头的内容
		String[] mapping = this.getSubHeadMapping();
		
		//判断上面创建的对象是否为空
		if(obj!=null)
		{
			//把第二头中对应的那个值放入相对应的对象当中
			BeanUtil.set(obj, mapping[0], value);
			fillCommonField(obj,position,keyId);
		}
		return obj;
	}
	
	
	/**
	 * @method 处理文字部分的状态字段和xml中的第一个头
	 * @param tr
	 * @param isThr
	 * @param obj
	 * @param position
	 * @param startState
	 * @param keyId
	 * @return
	 */
	protected Object getSplitBean(Element tr, boolean isThr, Object obj,int position,boolean startState, String keyId) {
		//得到tr中的内容
		String astr=tr.text();
		
		//如果obj为空
		if (null == obj) {
			//创建一个数组,用于存储xml中相对应的对象
			String[] modelTpye=null;
			
			//判断对象是否用逗号连接
			if(model.indexOf(",")!=-1)
			{
				//进来表示用逗号连接,并是多个对象
				modelTpye=model.split(",");
				
				//数组的长度大于position
				if(modelTpye.length>position)
				{
					//通过反射创建相对应的对象
					obj = BeanUtil.getInstance(modelTpye[position]);
				}
				else
				{
					//小于,就表示对象为空
					obj=null;
				}
			}
			else
			{
				//进来这里,就表示xml只有一个对象
				obj = BeanUtil.getInstance(model);
			}
		}
		//得到第一个头相对应的字段
		String[] mapping = this.getHeadMapping();
		
		//得到第一个头的内容
		String[] head=this.getHead();		
		
		//判断是否有第三个头
		if(isThr)
		{
			//得到第三个头(数组)
			head=this.getThrHead();
			
			//得到第三个头相对应字段(数组)
			mapping=this.getThrHeadMapping();
		}
		
		//遍历第一个头
		for(int index=0;index<head.length;index++)
		{
			//如果一个 头中值包含|
			if(head[index].indexOf("|")!=-1)
			{
				//进来,就通过|进行切割,得到数组
				String splithead[]=head[index].split("\\|");
				
				//遍历数组
				for(String shead:splithead)
				{
					//如果tr中包含商业银行或者机构
					if(astr.indexOf(shead)!=-1)
					{
						//把机构或者商业银行赋值给当前head[index]
						head[index]=shead;
						//终止循环
						break;
					}
				}
			}
			//如果头中值包含not
			if(head[index].indexOf("not")!=-1)
			{
				//跳过本次,进行下一次
				continue;
			}
			
			//如果tr中不包含head中的每个关键字
			if(astr.indexOf(head[index])==-1)
			{
				break;
			}
			//定义一个变量存储截取出来的值
			String value="";
			
			//判断是head的值是空的时候
			if(index-1>=0&&head[index].equals(""))
			{
				 //截取出空前面那个值
				 value=astr.substring(0,head[index-1].length());
				 //把tr字符串变成新的字符串(就是把商业银行留住)
				 astr=astr.substring(head[index-1].length());
			}
			else
			{	
				
				value=astr.substring(0,astr.indexOf(head[index]));
			}
			value=value.replace("“", "");
			if(startState) {
				if (!"".equals(mapping[index]))
				{
					if(index >2) {
						BeanUtil.set(obj, mapping[index], value);
						 continue;
					}else {
						astr=astr.substring(astr.indexOf(head[index])+head[index].length());
						continue;
					}
				}
			}
			if(!mapping[index].trim().equals(""))
			{
				if(value.indexOf("年")!=-1&&value.indexOf("月")!=-1)
				{
					value=DateUtil.stringDateFormat(value,"ymd");
				}
				BeanUtil.set(obj, mapping[index], value);
			}
			if(index+1<head.length)
			{
				if(head[index+1].equals(""))
				{
					astr=astr.substring(astr.indexOf(head[index]));
				}
				else
				{
					astr=astr.substring(astr.indexOf(head[index])+head[index].length());
				}
			}
			else
			{
				astr=astr.substring(astr.indexOf(head[index])+head[index].length());
			}
			
		}
		if(!isThr)
		{
			BeanUtil.set(obj, mapping[mapping.length-1], keyId);
			fillCommonField(obj,position,null);
		}
		return obj;
	}



	@Override
	public String getHeadFormated(Element table) {
		String strFormat = "";
		for (String field : parserHead(table, 1)) {
			strFormat += field + headDelimiter;
		}
		return strFormat;
	}
	
	
	
	/**
	 * 进行多次匹配
	 * element:传过来是tr
	 */
	@Override
	public boolean match(Element element) {
		boolean match = true;
		// 第一行匹配
		//得到tr中的值
		String actrualHead = element.text();
		//判断真实值不等于空并且不等于空的字符串
		if (actrualHead != null && !actrualHead.trim().equals("")) {
			//遍历xml中的头
			for (int i = 0; i < getHead().length; i++) {
				//如果头中值包含|
				if (getHead()[i].indexOf("|")!=-1) {
					//通过| 进行切割成数组
					String strHead[]=getHead()[i].split("\\|");
					//如果真实的头不包含数组中的值
					boolean strHeadIndexof=true;
					for(int j=0;j<strHead.length;j++)
					{
						if(actrualHead.indexOf(strHead[j])!=-1) {
							//匹配失败
							strHeadIndexof=false;
						}
					}
					if(strHeadIndexof)
					{
						match = false;
						//跳出循环
						break;
					}
				}
				//如果xml中头包含not
				else if (getHead()[i].indexOf("not")!=-1) {
					//把not替换成空字符串
					String strHead=getHead()[i].replace("not", "");
					//如果真实头包含strhead
					if(actrualHead.indexOf(strHead)!=-1) {
						//匹配失败
						match = false;
						//跳出循环
						break;
					}
				}
				else {
					//如果真实头不包含xml中头
 					if(actrualHead.indexOf(getHead()[i])==-1) {
					//匹配失败
					match = false;
					//跳出循环
					break;
					}
				}
			}
		} else {
			//等于空.就是不匹配
			match = false;
		}
		return match;
	}
}
