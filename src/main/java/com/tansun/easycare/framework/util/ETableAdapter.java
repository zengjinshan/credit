package com.tansun.easycare.framework.util;

import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tansun.di.crawler.table.handle.enterprise.ETableHandle;


/**
 * 数据处理适配器
 * 
 * @author georgeKim
 *
 */
@Component
public class ETableAdapter {

	@Autowired
	private List<ETableHandle> handleList;

	/**
	 * 获取表处理器
	 * 
	 * @param tableElement
	 * @return
	 */
	public ETableHandle getTableHandle(Element tableElement) {
		ETableHandle th = null;
		for (ETableHandle handle : handleList) {
			th = handle;
			if (handle.match(tableElement)) {
				handle.setTableElement(tableElement);
				// TODO 暂时不删
				 handleList.remove(handle);
				break;
			} else {
				th = null;
			}
		}
		return th;
	}
	
	public List<ETableHandle> getFetchHandle()
	{
		List<ETableHandle> th = new ArrayList<ETableHandle>();
		for (ETableHandle handle : handleList) {
			if (handle.getStartTitle()!=null) {
				th.add(handle);
			} 
		}
		if(th.size()>0)
		{
			for(ETableHandle handle : th)
			{
				handleList.remove(handle);
			}
		}
		return th;
	}

}
