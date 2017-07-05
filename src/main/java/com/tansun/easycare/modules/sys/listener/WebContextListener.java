package com.tansun.easycare.modules.sys.listener;

import javax.servlet.ServletContext;

import org.springframework.web.context.WebApplicationContext;

import com.tansun.easycare.modules.sys.service.impl.SystemServiceImpl;

public class WebContextListener extends org.springframework.web.context.ContextLoaderListener {
	
	@Override
	public WebApplicationContext initWebApplicationContext(ServletContext servletContext) {
		if (!SystemServiceImpl.printKeyLoadMessage()){
			return null;
		}
		
		return super.initWebApplicationContext(servletContext);
	}
}
