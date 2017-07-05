package com.tansun.easycare.framework.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Created by rdpc2419 on 2017/4/21.
 */
@Component
public class SpringBeanFactory implements ApplicationContextAware {

    private  static ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext applicationContext)
            throws BeansException {
        SpringBeanFactory.applicationContext = applicationContext;
    }

    public  static   ApplicationContext getApplicationContext(){
        return applicationContext;
    }

    public  static  Object  getBean(String beanName) {
        return  applicationContext.getBean(beanName);
    }

    public  static  Object  getBean(String beanName,Class requiredTypeClass){
        return  applicationContext.getBean(beanName, requiredTypeClass);
    }

    public  static  boolean   containsBean(String  beanName){
        return applicationContext.containsBean(beanName);
    }


    public  static  Class  getType(String beanName){
        return applicationContext.getType(beanName);
    }


}
