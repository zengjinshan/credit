package com.tansun.easycare.framework.util;

import java.util.List;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.tansun.di.crawler.table.handle.people.TableHandle;

/**
 * 数据处理适配器
 * 
 * @author georgeKim
 *
 */
@Component
public class TableAdapter {

	@Autowired
	private List<TableHandle> handleList;

	/**
	 * 获取表处理器
	 * 
	 * @param tableElement
	 * @return
	 */
	public TableHandle getTableHandle(Element tableElement) {
		TableHandle th = null;
		for (TableHandle handle : handleList) {
			th = handle;
			if (handle.match(tableElement)) {
				handle.setTableElement(tableElement);
				// TODO 暂时不删
				// handleList.remove(handle);
				break;
			} else {
				th = null;
			}
		}
		return th;
	}

}
