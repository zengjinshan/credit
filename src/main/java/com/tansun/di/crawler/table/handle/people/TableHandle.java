package com.tansun.di.crawler.table.handle.people;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tansun.easycare.framework.util.BeanUtil;
import com.tansun.easycare.modules.credit.entity.people.RNrLatest24monthpaymentstate;
import com.tansun.easycare.modules.credit.entity.people.RNrState;

/**
 * 定义一般的表头信息
 * 
 * @author georgeKim
 *
 */
@Component("tableHandle")
public abstract class TableHandle {
	protected String headDelimiter = "|";
	private Element tableElement = null;
	protected final String headSplit = ",";
	protected String head = null;
	protected String headMapping = null;

	protected String model = null;

	protected String subHead = null;
	protected String subHeadMapping = null;
	
	protected String thrHead = null;
	protected String thrHeadMapping = null;
	
	protected String fourHead = null;
	protected String fourHeadMapping = null;
	
	
	
	private String[] innerSubHeadMappingArray = null;
	private String[] innerHeadMappingArray = null;
	private String[] innerThrHeadMappingArray = null;
	private String[] innerFourHeadMappingArray = null;
	
	public static final String REPORTID = "reportId";
	private String reportId = null;
	
	private String onlyId = null;
	
	private String primaryKey=null;
	
	public String getPrimaryKey() {
		return primaryKey;
	}

	public void setPrimaryKey(String primaryKey) {
		this.primaryKey = primaryKey;
	}
	
	private String firPrimaryKey=null;
	private String secPrimaryKey=null;
	private String thrPrimaryKey=null;
	private String fouPrimaryKey=null;
	
	

	public String getFirPrimaryKey() {
		return firPrimaryKey;
	}

	public void setFirPrimaryKey(String firPrimaryKey) {
		this.firPrimaryKey = firPrimaryKey;
	}

	public String getSecPrimaryKey() {
		return secPrimaryKey;
	}

	public void setSecPrimaryKey(String secPrimaryKey) {
		this.secPrimaryKey = secPrimaryKey;
	}

	public String getThrPrimaryKey() {
		return thrPrimaryKey;
	}

	public void setThrPrimaryKey(String thrPrimaryKey) {
		this.thrPrimaryKey = thrPrimaryKey;
	}

	public String getFouPrimaryKey() {
		return fouPrimaryKey;
	}

	public void setFouPrimaryKey(String fouPrimaryKey) {
		this.fouPrimaryKey = fouPrimaryKey;
	}

	private Map<String, Object> handleMap;
	
	public Map<String, Object> getHandleMap() {
		return handleMap;
	}

	public void setHandleMap(Map<String, Object> handleMap) {
		this.handleMap = handleMap;
	}

	/**
	 * @return the reportId
	 */
	public String getReportId() {
		return reportId;
	}

	/**
	 * @param reportId the reportId to set
	 */
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getOnlyId() {
		return onlyId;
	}

	public void setOnlyId(String onlyId) {
		this.onlyId = onlyId;
	}
	
	protected final String TIMESTAMP = "timeStamp";
	protected String fixKeyValue;

	/**
	 * @return the fixKeyValue
	 */
	public String getFixKeyValue() {
		return fixKeyValue;
	}

	/**
	 * @param fixKeyValue
	 *            the fixKeyValue to set
	 */
	@Autowired(required = false)
	public void setFixKeyValue(String fixKeyValue) {
		this.fixKeyValue = fixKeyValue;
	}

	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}

	/**
	 * @param model
	 *            the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}

	/**
	 * @return the headMapping
	 */
	public String[] getHeadMapping() {
		if (null == innerHeadMappingArray && null != headMapping) {
			innerHeadMappingArray = headMapping.split(headSplit);
		}
		return innerHeadMappingArray;
	}

	/**
	 * @param headMapping
	 *            the headMapping to set
	 */
	// @Autowired
	public void setHeadMapping(String headMapping) {
		this.headMapping = headMapping;
	}

	/**
	 * @return the subHeadMapping
	 */
	public String[] getSubHeadMapping() {
		if (null == innerSubHeadMappingArray && null != subHeadMapping) {
			innerSubHeadMappingArray = subHeadMapping.split(headSplit);
		}
		return innerSubHeadMappingArray;
	}
	


	@Autowired(required = false)
	public void setSubHead(String subHead) {
		this.subHead = subHead;
	}
	
	
	

	/**
	 * @param subHeadMapping
	 *            the subHeadMapping to set
	 */
	@Autowired(required = false)
	public void setSubHeadMapping(String subHeadMapping) {
		this.subHeadMapping = subHeadMapping;
	}
	
	

	/**
	 * @return the headSplit
	 */
	public String getHeadSplit() {
		return headSplit;
	}

	/**
	 * @param subHead
	 *            the subHead to set
	 */

	@Autowired
	public void setHead(String head) {
		this.head = head;
	}

	/**
	 * @return the tableElement
	 */
	public Element getTableElement() {
		return tableElement;
	}

	/**
	 * @param tableElement
	 *            the tableElement to set
	 */
	public void setTableElement(Element tableElement) {
		this.tableElement = tableElement;
	}

	/**
	 * 返回第一层
	 * 
	 * @return the head
	 */

	public String[] getHead() {
		if (null != head) {
			return head.split(headSplit);
		}
		return null;
	}

	public String[] getSubHead() {
		if (null != subHead) {
			return subHead.split(headSplit);
		}
		return null;
	}
	
	@Autowired(required = false)
	public void setThrHead(String thrHead) {
		this.thrHead = thrHead;
	}
	
	public String[] getThrHead() {
		if (null != thrHead) {
			return thrHead.split(headSplit);
		}
		return null;
	}
	
	@Autowired(required = false)
	public void setThrHeadMapping(String thrHeadMapping) {
		this.thrHeadMapping = thrHeadMapping;
	}
	public String[] getThrHeadMapping() {
		if (null == innerThrHeadMappingArray && null != thrHeadMapping) {
			innerThrHeadMappingArray = thrHeadMapping.split(headSplit);
		}
		return innerThrHeadMappingArray;
	}
	
	
	@Autowired(required = false)
	public void setFourHead(String fourHead) {
		this.fourHead = fourHead;
	}
	
	public String[] getFourHead() {
		if (null != fourHead) {
			return fourHead.split(headSplit);
		}
		return null;
	}
	
	@Autowired(required = false)
	public void setFourHeadMapping(String fourHeadMapping) {
		this.fourHeadMapping = fourHeadMapping;
	}
	public String[] getFourHeadMapping() {
		if (null == innerFourHeadMappingArray && null != fourHeadMapping) {
			innerFourHeadMappingArray = fourHeadMapping.split(headSplit);
		}
		return innerFourHeadMappingArray;
	}
	
	abstract int getTableType();

	public abstract String process(Element element);

	/**
	 * 获取表头
	 * 
	 * @param tableElement
	 * @return
	 */
	Element tr = null;

	protected String[] parserHead(Element tableElement, int level) {
		String[] actrualHead =null;
		if(tableElement.children().html().indexOf("tr")!=-1)
		{
			if (level == 1) {
				tr = tableElement.children().select("tr").first();
			} else {
				tr = tableElement.children().select("tr").first().nextElementSibling();
			}
			Elements eHeads = tr.select("td");
			Iterator<Element> iTd = eHeads.iterator();
			actrualHead = new String[eHeads.size()];
			int index = 0;
			while (iTd.hasNext()) {
				Element td = iTd.next();
				actrualHead[index] = td.text().trim();
				index++;
			}
		}
		return actrualHead;
	}

	/**
	 * 判断是否匹配
	 * 
	 * @param element
	 * @return
	 */
	public boolean match(Element element) {
		boolean match = true;
		String[] actrualHead = parserHead(element, 1);
		if (actrualHead != null && actrualHead.length == getHead().length) {
			for (int i = 0; i < actrualHead.length; i++) {
				if (!getHead()[i].equals(actrualHead[i])) {
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
	 * 获取数据值
	 * 
	 * @param element
	 * @return
	 */
	protected String[] getValue(Element tr) {
		// Elements tds = tr.children().select("td");
		Elements tds = tr.select("td");
		Iterator<Element> itd = tds.iterator();
		int index = 0;
		String[] value = new String[tds.size()];
		while (itd.hasNext()) {
			Element td = itd.next();
			value[index] = td.text();
			index++;
		}
		return value;
	}

	protected Object getBean(Element tr, boolean isSub, Object obj) {
		Elements tds = tr.select("td");
		if (null == obj) {
			obj = BeanUtil.getInstance(model);
			if (null != fixKeyValue) {
				if(!fixKeyValue.equals(""))
					BeanUtil.set(obj, fixKeyValue.split("=")[0], fixKeyValue.split("=")[1]);
			}
		}
		Iterator<Element> itd = tds.iterator();
		int index = 0;
		String[] mapping = this.getHeadMapping();
		if (isSub) {
			mapping = this.getSubHeadMapping();
		}
		while (itd.hasNext()) {
			Element td = itd.next();
			if (!"".equals(mapping[index])&&!td.text().trim().equals("--")) {
				BeanUtil.set(obj, mapping[index], td.text());
			}
			index++;
		}
		fillCommonField(obj,99,null);
		return obj;
	}

	protected void fillCommonField(Object obj,int position,String keyId) {
		BeanUtil.set(obj, REPORTID, reportId);
		BeanUtil.set(obj, TIMESTAMP, new Date());
		if(primaryKey!=null)
			BeanUtil.set(obj, primaryKey, UUID.randomUUID().toString().toLowerCase());
		if(firPrimaryKey!=null)
		{
			String uuid=UUID.randomUUID().toString().toLowerCase();
			if(keyId!=null)
			{
				uuid=keyId;
			}
			if(position==0)
			{
				BeanUtil.set(obj, firPrimaryKey, uuid);
			}
			else if(position==1)
			{
				BeanUtil.set(obj, secPrimaryKey, uuid);
			}
			else if(position==2)
			{
				BeanUtil.set(obj, thrPrimaryKey, uuid);
			}
			else if(position==3)
			{
				BeanUtil.set(obj, fouPrimaryKey, uuid);
			}
		}
	}

	/**
	 * 获取值列表
	 * 
	 * @param element
	 * @return
	 */
	public List<String[]> getValueList(Element element) {
		List<String[]> valueList = new ArrayList<String[]>();
		Elements trs = element.children().select("tr").first().siblingElements();
		Iterator<Element> itr = trs.iterator();
		while (itr.hasNext()) {
			Element tr = itr.next();
			String[] line = this.getValue(tr);
			valueList.add(line);
		}
		return valueList;
	}

	
	/**
	 * 获取数据对象
	 * 
	 * @param element
	 * @return
	 */
	public List<Object> getBeanList(Element tableElement) {
		List<Object> valueList = new ArrayList<Object>();
		Elements trs = tableElement.children().select("tr").first().siblingElements();
		Iterator<Element> itr = trs.iterator();
		while (itr.hasNext()) {
			Element tr = itr.next();
			Object obj = getBean(tr, false, null);
			valueList.add(obj);
		}
		return valueList;
	}

	public abstract String getHeadFormated(Element table);
	
	/**
	 * 解析24个月还款记录数据
	 */
	protected Map<String, Object> getBeanState(Element tr, Object obj,String keyId) {
		Map<String, Object> valueMap = new HashMap<String, Object>();	
		Elements tds = tr.select("td");
		Iterator<Element> itd = tds.iterator();
		Calendar calendar = Calendar.getInstance(); 
		DateFormat df=new SimpleDateFormat("yyyy.MM");
		RNrLatest24monthpaymentstate rNrLatest24monthpaymentstate=(RNrLatest24monthpaymentstate) obj;
		int n=0;
		while (itd.hasNext()) {
			Element td = itd.next();
			RNrState rNrState=new RNrState();
			rNrState.setStateId(UUID.randomUUID().toString().toLowerCase());
			rNrState.setSuperId(keyId);		
			rNrState.setPaystate(td.text());
			if(rNrLatest24monthpaymentstate.getBeginmonth()!=null&&!rNrLatest24monthpaymentstate.getBeginmonth().trim().equals(""))
			{
				try {
					Date date = df.parse(rNrLatest24monthpaymentstate.getBeginmonth());
					calendar.setTime(date);
					calendar.add(Calendar.MONTH, n); // 目前時間加1個月    													
					rNrState.setPaymonth(df.format(calendar.getTime()));
					rNrState.setStateIndex(n+1);
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}		
			}
			fillCommonField(rNrState,99,null);
			valueMap.put(getReportId()+"state"+n, rNrState);
			n++;
		}
		return valueMap;
	}
	
	
	/**
	 * 获取List对象
	 */
	public List<Object> getList() throws Exception {
		return getBeanList(tableElement);
	}

	public Map<String, Object> getBeanMap(Element trElement) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 获取Map对象
	 */
	public Map<String, Object> getMap() throws Exception {
		return getBeanMap(tableElement);
	}
}
