package com.tansun.di.crawler.table.handle.enterprise;

import org.jsoup.nodes.Element;

/**
 * 
 * @author georgeKim
 *
 */
public class ETypeAHandle extends ETableHandle {

	
	@Override
	public String getHeadFormated(Element table) {
		String strFormat = "";
		for (String field : parserHead(table, 1)) {
			strFormat += field + headDelimiter;
		}
		return strFormat;
	}

	@Override
	public String process(Element element) {
		return null;
	}


	@Override
	int getTableType() {
		return 1;
	}
}
